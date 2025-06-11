import streamlit as st
import pandas as pd
import pydeck as pdk
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.express as px
from streamlit_option_menu import option_menu
from db import get_connection


# --- PAGE CONFIG ---
st.set_page_config(layout="wide", page_title="International Collaboration", page_icon="🌍")

# --- CSS ---
st.markdown("""
    <style>
        .header-text {
            margin-left: 15px;
        }
        .header-title {
            font-size: 22px;
            font-weight: bold;
            color: #1E4EB3;
        }
        .header-subtitle {
            font-size: 16px;
            color: #8a8a8a;
            margin-top: -5px;
        }
        .title-box {
            background-color: #1E4EB3;
            color: white;
            padding: 1rem;
            border-radius: 4px;
            font-size: 1.5rem;
            font-weight: bold;
            text-align: center;
            margin: 10px 0 20px 0;
        }
        .nav-menu {
            width: 100% !important;
            justify-content: space-around !important;
            font-size: 1.1rem !important;
        }
        .nav-menu > li {
            padding: 0 20px !important;
            min-width: 130px;
            text-align: center;
        }

        .filter-divider {
            border-top: 1px solid #ccc;
            margin-top: 1rem;
            margin-bottom: 1.5rem;
        }

        .selectbox-label {
            text-align: center;
            font-weight: bold;
            color: #1E4EB3;
            font-size: 16px;
            margin-bottom: -2.5rem;
            display: block;
        }
    </style>
""", unsafe_allow_html=True)

# --- HEADER ---
col1, col2 = st.columns([0.1, 1])
with col1:
    st.image("Logo_Unila.png", width=60)
with col2:
    st.markdown("""
        <div class="header-text">
            <div class="header-title">World Class University</div>
            <div class="header-subtitle">Universitas Lampung</div>
        </div>
    """, unsafe_allow_html=True)

# --- NAVBAR ---
selected_menu = option_menu(
    menu_title=None,
    options=["Home", "Colab Space", "Faculty Staff", "Student Inbound-Outbound", "Alumni"],
    icons=["house", "layers", "people", "arrows-angle-expand", "person-bounding-box"],
    orientation="horizontal"
)

if selected_menu == "Home":
    # -------------------------- HEADER WCU ANALYSIS --------------------------
    st.markdown("""
        <style>
            .home-banner {
                background-color: #e6ebf7;
                padding: 2rem 1rem;
                border-radius: 10px;
                margin-bottom: 30px;
            }
            .card-box {
                background-color: transparent;
                border: 1px solid #ccc;
                border-radius: 12px;
                padding: 1.2rem;
                margin-bottom: 20px;
            }
            .card-title {
                font-size: 18px;
                font-weight: 700;
                color: #1E4EB3;
                margin-bottom: 8px;
            }
            .card-desc {
                font-size: 14px;
                color: #444;
                margin-bottom: 10px;
            }
        </style>

        <div class="home-banner">
            <div style="display: flex; align-items: center; justify-content: center; flex-direction: column;">
                <img src='https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Equirectangular_projection_SW.jpg/640px-Equirectangular_projection_SW.jpg' width='100%' style="max-height:200px; object-fit: cover; border-radius: 10px;"/>
                <h1 style="margin-top: 20px; font-size: 36px; font-weight: bold;">WCU Analysis</h1>
                <p style="max-width: 800px; text-align: center; font-size: 15px; color: #333;">
                    Menggunakan data yang disediakan oleh pihak Universitas, indikator ini menilai tingkat keterbukaan internasional dalam hal kolaborasi untuk setiap lembaga yang dievaluasi. 
                    Indeks Margalef, yang banyak digunakan dalam ilmu lingkungan, telah diadaptasi untuk memperkirakan kekayaan mitra penelitian internasional yang dipilih untuk lembaga tertentu. 
                    Tujuan di balik indikator ini adalah untuk mengukur keragaman kemitraan penelitian internasional.
                </p>
            </div>
        </div>
    """, unsafe_allow_html=True)

    # -------------------------- DATA PREP --------------------------
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT n.nama_negara, COUNT(*) AS jumlah
        FROM kolaborasi_internasional ki
        JOIN negara n ON ki.id_negara = n.id_negara
        GROUP BY n.nama_negara
        ORDER BY jumlah DESC
        LIMIT 10
    """)
    df_colab = pd.DataFrame(cursor.fetchall())
    fig_colab = px.bar(df_colab, x='nama_negara', y='jumlah', text='jumlah', color='jumlah',
                       labels={'nama_negara': 'Negara', 'jumlah': 'Kolaborasi'},
                       color_continuous_scale='blues')
    fig_colab.update_traces(textposition='outside')
    fig_colab.update_layout(margin=dict(t=20))

    df_program = pd.read_sql("SELECT tahun, tipe_program FROM program", conn)
    student_summary = df_program.groupby(['tahun', 'tipe_program']).size().unstack(fill_value=0).reset_index()
    fig_student = px.bar(student_summary, x='tahun', y=['Inbound', 'Outbound'], barmode='group',
                         color_discrete_sequence=['#1E4EB3', '#F28E2B'])
    fig_student.update_layout(margin=dict(t=20))

    df_staff = pd.read_sql("SELECT year AS Year, total_paper FROM wcu_data", conn)
    staff_summary = df_staff.groupby("Year")["total_paper"].sum().reset_index()
    fig_staff = px.line(staff_summary, x='Year', y='total_paper', markers=True)
    fig_staff.update_layout(margin=dict(t=20))

    cursor.execute("""
        SELECT YEAR(tahun_lulus) AS tahun, COUNT(*) AS jumlah
        FROM alumni
        WHERE waktu_dapat_kerja IS NOT NULL
        GROUP BY tahun
        ORDER BY tahun
    """)
    df_alumni = pd.DataFrame(cursor.fetchall())
    fig_alumni = px.bar(df_alumni, x='tahun', y='jumlah', color='jumlah',
                        labels={'tahun': 'Tahun Lulus', 'jumlah': 'Jumlah Alumni'},
                        color_continuous_scale='blues')
    fig_alumni.update_layout(margin=dict(t=20))

    # -------------------------- LAYOUT 2x2 --------------------------
    st.markdown("## Explore WCU")

    col1, col2 = st.columns(2)
# --- Colab Space Ringkasan (revisi)
    with col1:
        st.markdown("""
        <div class='card-box'>
            <div class='card-title'>🌐 Colab Space</div>
            <div class='card-desc'>Menampilkan 5 provinsi dan 5 negara dengan jumlah kolaborasi tertinggi, baik nasional maupun internasional.</div>
        """, unsafe_allow_html=True)

        # --- Query Kolaborasi Internasional (Top 5 Negara)
        cursor.execute("""
            SELECT n.nama_negara AS nama, COUNT(*) AS jumlah, 'Internasional' AS jenis
            FROM kolaborasi_internasional ki
            JOIN negara n ON ki.id_negara = n.id_negara
            GROUP BY nama
            ORDER BY jumlah DESC
            LIMIT 5
        """)
        df_internasional = pd.DataFrame(cursor.fetchall())

        # --- Query Kolaborasi Nasional (Top 5 Provinsi)
        cursor.execute("""
            SELECT p.nama_provinsi AS nama, COUNT(*) AS jumlah, 'Nasional' AS jenis
            FROM kolaborasi_nasional kn
            JOIN provinsi p ON kn.id_provinsi = p.id_provinsi
            GROUP BY nama
            ORDER BY jumlah DESC
            LIMIT 5
        """)
        df_nasional = pd.DataFrame(cursor.fetchall())

        # Gabungkan keduanya
        df_colab_all = pd.concat([df_internasional, df_nasional], ignore_index=True)

        # Buat bar chart
        fig_colab_mix = px.bar(
            df_colab_all,
            x='nama',
            y='jumlah',
            color='jenis',
            barmode='group',
            labels={'nama': 'Wilayah', 'jumlah': 'Jumlah Kolaborasi'},
            color_discrete_map={
                'Internasional': '#1E4EB3',
                'Nasional': '#F28E2B'
            }
        )
        fig_colab_mix.update_layout(margin=dict(t=20))

        st.plotly_chart(fig_colab_mix, use_container_width=True)
        st.markdown("</div>", unsafe_allow_html=True)


    with col2:
        st.markdown("""
        <div class='card-box'>
            <div class='card-title'>🎓 Student Inbound-Outbound</div>
            <div class='card-desc'>Menampilkan perbandingan jumlah mahasiswa inbound dan outbound per tahun dalam program internasional.</div>
        """, unsafe_allow_html=True)
        st.plotly_chart(fig_student, use_container_width=True)
        st.markdown("</div>", unsafe_allow_html=True)

    col3, col4 = st.columns(2)
    with col3:
        st.markdown("""
        <div class='card-box'>
            <div class='card-title'>🧑‍🏫 Faculty Staff</div>
            <div class='card-desc'>Jumlah publikasi dosen per tahun sebagai representasi kontribusi akademik terhadap jaringan riset internasional.</div>
        """, unsafe_allow_html=True)
        st.plotly_chart(fig_staff, use_container_width=True)
        st.markdown("</div>", unsafe_allow_html=True)

    with col4:
        st.markdown("""
        <div class='card-box'>
            <div class='card-title'>👨‍🎓 Alumni per Tahun</div>
            <div class='card-desc'>Distribusi alumni yang telah berhasil memperoleh pekerjaan setelah lulus, ditampilkan per tahun kelulusan.</div>
        """, unsafe_allow_html=True)
        st.plotly_chart(fig_alumni, use_container_width=True)
        st.markdown("</div>", unsafe_allow_html=True)





elif selected_menu == "Colab Space":
    sub_colab = st.selectbox("Pilih Submenu Colab Space", ["Internasional", "Nasional"])

    if sub_colab == "Internasional":
        st.markdown('<div class="title-box">International Collaboration</div>', unsafe_allow_html=True)

        st.markdown("""      
            <div style="text-align: center; color: #0b2a65; font-size: 16px;">
                Menggunakan data yang disediakan oleh Scopus, indikator ini menilai tingkat keterbukaan internasional dalam hal kolaborasi untuk setiap lembaga yang dievaluasi. 
                Indeks Margalef, yang banyak digunakan dalam ilmu lingkungan, telah diadaptasi untuk memperkirakan kekayaan mitra penelitian internasional yang dipilih 
                untuk lembaga tertentu. Tujuan di balik indikator ini adalah untuk mengukur keragaman kemitraan penelitian internasional.
                <br><br>
                <span style="font-size:16px;">Secara spesifik, indeks QS International Research Network dihitung dengan rumus sebagai berikut:</span>
                <br>
                <span style="font-size: 18px; font-weight: bold;">IRN = L / ln P</span>
                <br>
                <span style="font-size: 12px;">Di mana: L = Total lokasi / negara yang dicakup dan P = Jumlah total mitra internasional yang berbeda</span>
            </div>
        """, unsafe_allow_html=True)


        # --- Ambil data dari database
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            SELECT ki.*, 
                j.nama_jurusan, 
                f.nama_fakultas, 
                n.nama_negara, 
                jk.nama_jenis
            FROM kolaborasi_internasional ki
            JOIN jurusan j ON ki.id_jurusan = j.id_jurusan
            JOIN fakultas f ON j.id_fakultas = f.id_fakultas
            JOIN negara n ON ki.id_negara = n.id_negara
            JOIN jenis_kolaborasi jk ON ki.id_jenis = jk.id_jenis
        """)
        data = cursor.fetchall()
        df = pd.DataFrame(data)

        # --- Filter fakultas
        st.markdown('<div class="filter-divider"></div>', unsafe_allow_html=True)

        st.markdown("""
            <div class="filter-section">
                <span class="selectbox-label">Collaborations</span>
            </div>
        """, unsafe_allow_html=True)                                                    
        fakultas_list = sorted(df['nama_fakultas'].unique().tolist())
        selected_collab = st.selectbox("", ["Semua Kolaborasi"] + fakultas_list)

        if selected_collab != "Semua Kolaborasi":
            df_filtered = df[df['nama_fakultas'] == selected_collab]
            available_majors = sorted(df_filtered['nama_jurusan'].unique())
        else:
            df_filtered = df.copy()
            available_majors = sorted(df['nama_jurusan'].unique())

        # --- Tambahkan koordinat negara
        coords = {
            'Amerika Serikat': [37.7749, -122.4194],
            'Jepang': [35.6895, 139.6917],
            'Britania Raya': [51.5074, -0.1278],
            'Tiongkok': [39.9042, 116.4074],
            'Jerman': [52.52, 13.4050],
            'Prancis': [48.8566, 2.3522],
            'India': [28.6139, 77.2090],
            'Australia': [-35.2809, 149.13],
            'Taiwan': [23.6978, 120.9605],
            'Korea Selatan': [37.5665, 126.9780],
            'Singapura': [1.3521, 103.8198],
            'Malaysia': [3.1390, 101.6869],
            'Thailand': [13.7563, 100.5018],
            'Filipina': [13.41, 122.56],
            'Indonesia': [-5.4264, 105.2667],
            'Kamboja': [11.5564, 104.9282],
            'Vietnam': [21.0285, 105.8542],
            'Timor Leste': [-8.5569, 125.5603],
            'Laos': [17.9757, 102.6331],
            'Kanada': [45.4215, -75.6996],
            'Brunei Darussalam': [4.9031, 114.9398]
        }

        df_filtered['lat'] = df_filtered['nama_negara'].map(lambda x: coords.get(x, [0, 0])[0])
        df_filtered['lon'] = df_filtered['nama_negara'].map(lambda x: coords.get(x, [0, 0])[1])

        # --- Sidebar jurusan
        col_map, col_info = st.columns([4, 1.5])
        with col_info:
            jurusan = st.selectbox("Jurusan", ["Pilih Jurusan"] + available_majors)
            if jurusan != "Pilih Jurusan":
                df_filtered = df_filtered[df_filtered['nama_jurusan'] == jurusan]

        # --- IRN calculation
        import math
        L = df_filtered['nama_negara'].nunique()
        P = len(df_filtered)
        if P > 1:
            IRN = round(L / math.log(P), 2)
        else:
            IRN = 0


        with col_info:
            st.markdown(f"""
            <div style="border-radius: 12px; overflow-y: auto; max-height: 500px; 
                        box-shadow: 0 4px 10px rgba(0,0,0,0.1); text-align: center; margin-top: 5px;">
                <div style="background-color: #ffffff; padding: 1rem;">
                    <div style="font-weight: bold; font-size: 1.6rem;">IRN</div>
                    <div style="font-size: 0.9rem;">International Research Network Collaboration</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.6rem; font-weight: bold; color: #1E4EB3;">
                    {IRN}
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem;font-size: 1.6rem; font-weight: bold;">
                    L
                    <div style="font-weight: normal; font-size: 0.9rem;">Total lokasi atau negara yang dicakup</div>
                </div>
                <div style="background-color: #fff8e1; padding: 0.8rem; font-size: 1.6rem; font-weight: bold;">
                    {L}
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem; font-size: 1.6rem;font-weight: bold;">
                    P
                    <div style="font-weight: normal; font-size: 0.9rem;">Jumlah total mitra internasional yang berbeda</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.6rem; font-weight: bold; color: #1E4EB3;">
                    {P}
                </div>
            </div>
            """, unsafe_allow_html=True)

        # --- Map
        with col_map:
            df_map = df_filtered.copy()
            df_map = df_map[df_map['lat'].notnull() & df_map['lon'].notnull()]

            # Gabungkan tanggal dalam satu kolom string
            df_map['periode'] = df_map['tanggal_mulai'].astype(str) + " s/d " + df_map['tanggal_selesai'].astype(str)

            # Agregasi data per negara
            df_map = df_map.groupby(['nama_negara', 'lat', 'lon']) \
                .agg({
                    'nama_jenis': lambda x: ', '.join(sorted(set(x))),
                    'nama_jurusan': 'count',
                    'periode': lambda x: ', '.join(sorted(set(x)))
                }).reset_index().rename(columns={
                    'nama_jurusan': 'jumlah_kolaborasi',
                    'nama_jenis': 'jenis_kolaborasi'
                })

            # Ubah layer
            st.pydeck_chart(pdk.Deck(
                map_style='mapbox://styles/mapbox/light-v9',
                initial_view_state=pdk.ViewState(latitude=0, longitude=100, zoom=1.2),
                layers=[
                    pdk.Layer(
                        'ScatterplotLayer',
                        data=df_map,
                        get_position='[lon, lat]',
                        get_radius=400000,
                        get_color='[0, 102, 204, 160]',
                        pickable=True
                    ),
                    pdk.Layer(
                        'ArcLayer',
                        data=df_map,
                        get_source_position="[105.2667, -5.4264]",
                        get_target_position="[lon, lat]",
                        get_source_color=[255, 100, 100],
                        get_target_color=[0, 100, 255],
                        auto_highlight=True,
                        width_scale=0.5,
                        get_width=2
                    )
                ],
                tooltip={
                    "html": """
                        <b>{nama_negara}</b><br/>
                        Jumlah Kolaborasi: {jumlah_kolaborasi}<br/>
                        Jenis: {jenis_kolaborasi}<br/>
                        Periode: {periode}
                    """,
                    "style": {
                        "backgroundColor": "white",
                        "color": "#1E4EB3",
                        "fontSize": "14px",
                        "padding": "10px"
                    }
                }
            ), height=550)



        # --- Bar Chart
        chart_df = df_filtered.groupby(['nama_negara', 'nama_jenis']).size().unstack(fill_value=0).reset_index()
        melted = chart_df.melt(id_vars="nama_negara", var_name="Jenis", value_name="Jumlah")

        fig = px.bar(melted, x="nama_negara", y="Jumlah", color="Jenis", barmode="stack", height=500,
                    color_discrete_map={
                        "Dosen Tamu": "#FFF1D3",
                        "Akademik": "#F1DEBB",
                        "Riset dan Publikasi": "#E7D280",
                        "Seminar dan Workshop": "#E3BE45"
                    })
        st.markdown("## Kolaborasi per Negara")
        st.plotly_chart(fig, use_container_width=True)

        # --- Tabel detail kolaborasi
 
        st.markdown("### 📋 Detail Kolaborasi Internasional")
        st.dataframe(
            df_filtered[[
                'nama_kolaborasi',
                'nama_negara',
                'nama_jurusan',
                'nama_jenis',
                'tanggal_mulai',
                'tanggal_selesai'
            ]].sort_values(by='tanggal_mulai', ascending=False).rename(columns={
                'nama_kolaborasi': 'Nama Kolaborasi',
                'nama_negara': 'Negara',
                'nama_jurusan': 'Jurusan',
                'nama_jenis': 'Jenis Kolaborasi',
                'tanggal_mulai': 'Mulai',
                'tanggal_selesai': 'Selesai'
            }),
            use_container_width=True,
            hide_index=True
        )



    elif sub_colab == "Nasional":

        st.markdown('<div class="title-box">National Collaboration</div>', unsafe_allow_html=True)
        st.markdown("""      
            <div style="text-align: center; color: #0b2a65; font-size: 16px;">
                Menggunakan data yang disediakan oleh Universitas, indikator ini menilai tingkat keterbukaan nasional dalam hal kolaborasi 
                untuk setiap lembaga yang dievaluasi. Indeks Margalef, yang banyak digunakan dalam ilmu lingkungan, telah diadaptasi untuk 
                memperkirakan kekayaan mitra penelitian nasional yang dipilih untuk lembaga tertentu. Tujuan di balik indikator ini adalah 
                untuk mengukur keragaman kemitraan penelitian nasional.
                <br><br>
                <span style="font-size:16px;">Secara spesifik, indeks National Research Network dihitung dengan rumus sebagai berikut:</span>
                <br>
                <span style="font-size: 18px; font-weight: bold;">NRN = L / ln P</span>
                <br>
                <span style="font-size: 12px;">Di mana: L = Total lokasi / provinsi yang dicakup dan P = Jumlah total mitra nasional yang berbeda</span>
            </div>
        """, unsafe_allow_html=True)


        # --- Ambil data kolaborasi nasional dari database
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            SELECT kn.*, 
                j.nama_jurusan, 
                f.nama_fakultas,
                p.nama_provinsi,
                jk.nama_jenis
            FROM kolaborasi_nasional kn
            JOIN jurusan j ON kn.id_jurusan = j.id_jurusan
            JOIN fakultas f ON j.id_fakultas = f.id_fakultas
            JOIN provinsi p ON kn.id_provinsi = p.id_provinsi
            JOIN jenis_kolaborasi jk ON kn.id_jenis = jk.id_jenis
        """)
        data = cursor.fetchall()
        df = pd.DataFrame(data)

        # --- Dropdown fakultas dan jurusan (dinamis)
        st.markdown('<div class="filter-divider"></div>', unsafe_allow_html=True)

        st.markdown("""
            <div class="filter-section">
                <span class="selectbox-label">Collaborations</span>
            </div>
        """, unsafe_allow_html=True)                                              
        fakultas_list = sorted(df['nama_fakultas'].unique().tolist())
        selected_fakultas = st.selectbox("", ["Semua Kolaborasi"] + fakultas_list)

        if selected_fakultas != "Semua Kolaborasi":
            df_filtered = df[df['nama_fakultas'] == selected_fakultas]
            available_majors = sorted(df_filtered['nama_jurusan'].unique())
        else:
            df_filtered = df.copy()
            available_majors = sorted(df['nama_jurusan'].unique())

        col_map, col_info = st.columns([4, 1.5])

        with col_info:
            selected_jurusan = st.selectbox("Jurusan", ["Pilih Jurusan"] + available_majors)
            if selected_jurusan != "Pilih Jurusan":
                df_filtered = df_filtered[df_filtered['nama_jurusan'] == selected_jurusan]

        # --- Hitung NRN
        import math
        L = df_filtered['nama_provinsi'].nunique()
        P = len(df_filtered)
        NRN = round(L / math.log(P), 2) if P > 1 else 0

        with col_info:
            st.markdown(f"""
            <div style="border-radius: 12px; overflow-y: auto; max-height: 500px; 
                        box-shadow: 0 4px 10px rgba(0,0,0,0.1); text-align: center; margin-top: 5px;">
                <div style="background-color: #ffffff; padding: 1rem;">
                    <div style="font-weight: bold; font-size: 1.6rem;">NRN</div>
                    <div style="font-size: 0.9rem;">National Research Network Collaboration</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.6rem; font-weight: bold; color: #1E4EB3;">
                    {NRN}
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem;font-size: 1.6rem; font-weight: bold;">
                    L
                    <div style="font-weight: normal; font-size: 0.9rem;">Jumlah provinsi yang dicakup</div>
                </div>
                <div style="background-color: #fff8e1; padding: 0.8rem; font-size: 1.6rem; font-weight: bold;">
                    {L}
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem; font-size: 1.6rem;font-weight: bold;">
                    P
                    <div style="font-weight: normal; font-size: 0.9rem;">Jumlah total mitra nasional yang berbeda</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.6rem; font-weight: bold; color: #1E4EB3;">
                    {P}
                </div>
            </div>
            """, unsafe_allow_html=True)

        # --- Koordinat provinsi (sederhana/manual)
        coords = {
            'DKI Jakarta': [-6.2, 106.8],
            'Jawa Barat': [-6.9, 107.6],
            'Jawa Tengah': [-7.0, 110.4],
            'DI Yogyakarta': [-7.8, 110.4],
            'Jawa Timur': [-7.5, 112.7],
            'Banten': [-6.2, 106.1],
            'Bali': [-8.4, 115.2],
            'Nusa Tenggara Barat': [-8.652, 117.361],
            'Nusa Tenggara Timur': [-10.177, 123.607],
            'Kalimantan Barat': [-0.029, 109.342],
            'Kalimantan Tengah': [-1.681, 113.382],
            'Kalimantan Selatan': [-3.319, 114.591],
            'Kalimantan Timur': [0.538, 116.419],
            'Kalimantan Utara': [3.073, 117.645],
            'Sulawesi Utara': [1.493, 124.842],
            'Sulawesi Tengah': [-0.893, 119.894],
            'Sulawesi Selatan': [-5.135, 119.412],
            'Sulawesi Tenggara': [-4.160, 122.163],
        }

        df_filtered['lat'] = df_filtered['nama_provinsi'].map(lambda x: coords.get(x, [0, 0])[0])
        df_filtered['lon'] = df_filtered['nama_provinsi'].map(lambda x: coords.get(x, [0, 0])[1])

        # --- Peta interaktif
        with col_map:
            df_map = df_filtered.groupby(['nama_provinsi', 'lat', 'lon']) \
                .agg({'nama_jenis': lambda x: ', '.join(sorted(set(x))), 'nama_jurusan': 'count'}) \
                .reset_index().rename(columns={
                    'nama_jurusan': 'jumlah_kolaborasi',
                    'nama_jenis': 'jenis_kolaborasi'
                })

            st.pydeck_chart(pdk.Deck(
                map_style='mapbox://styles/mapbox/light-v9',
                initial_view_state=pdk.ViewState(latitude=-2.5, longitude=117, zoom=3.8, pitch=0),
                layers=[
                    pdk.Layer(
                        'ScatterplotLayer',
                        data=df_map,
                        get_position='[lon, lat]',
                        get_radius=40000,
                        get_color='[0, 102, 204, 160]',
                        pickable=True
                    ),
                    pdk.Layer(
                        'ArcLayer',
                        data=df_map,
                        get_source_position="[105.2667, -5.4264]",
                        get_target_position="[lon, lat]",
                        get_source_color=[255, 100, 100],
                        get_target_color=[0, 100, 255],
                        auto_highlight=True,
                        width_scale=0.5,
                        get_width=2
                    )
                ],
                tooltip={
                    "html": """
                        <b>{nama_provinsi}</b><br/>
                        Jumlah Kolaborasi: {jumlah_kolaborasi}<br/>
                        Jenis: {jenis_kolaborasi}
                    """,
                    "style": {
                        "backgroundColor": "white",
                        "color": "#1E4EB3",
                        "fontSize": "14px",
                        "padding": "10px"
                    }
                }
            ), height=550)

        # --- Bar Chart
        chart_df = df_filtered.groupby(['nama_provinsi', 'nama_jenis']).size().unstack(fill_value=0).reset_index()
        melted = chart_df.melt(id_vars="nama_provinsi", var_name="Jenis", value_name="Jumlah")
        fig = px.bar(melted, x="nama_provinsi", y="Jumlah", color="Jenis", barmode="stack", height=500,
                    color_discrete_map={
                        "Dosen Tamu": "#FAF2DC",
                        "Akademik": "#D0C7A2",
                        "Riset dan Publikasi": "#99BE8F",
                        "Seminar dan Workshop": "#76A98D"
                    })
        st.markdown("## Kolaborasi per Provinsi")
        st.plotly_chart(fig, use_container_width=True)

        # --- Tabel Detail
        st.markdown("### 📋 Detail Kolaborasi Nasional")
        st.dataframe(
            df_filtered[[
                'nama_kolaborasi',
                'nama_provinsi',
                'nama_jurusan',
                'nama_jenis',
                'tanggal_mulai',
                'tanggal_selesai'
            ]].sort_values(by='tanggal_mulai', ascending=False).rename(columns={
                'nama_kolaborasi': 'Nama Kolaborasi',
                'nama_provinsi': 'Provinsi',
                'nama_jurusan': 'Jurusan',
                'nama_jenis': 'Jenis Kolaborasi',
                'tanggal_mulai': 'Mulai',
                'tanggal_selesai': 'Selesai'
            }),
            use_container_width=True,
            hide_index=True
        )

        
elif selected_menu == "Faculty Staff":
    # Ambil data dari database
    conn = get_connection()
    query = """
        SELECT 
            year AS Year,
            affiliation_name AS `Affiliation Name`,
            total_paper AS `total paper`,
            citation_ex_self_citation AS `citation(ex self citation)`,
            citation_per_faculty AS `Citation per faculty`
        FROM wcu_data
    """
    df = pd.read_sql(query, conn)

    # =========================== Gaya Visual ===========================
    sns.set_style("whitegrid")

    # =========================== Filter UI ===========================
    st.markdown("### 🔍 Filter Data")

    years = sorted(df['Year'].dropna().unique())
    affiliations = sorted(df['Affiliation Name'].dropna().unique())
    dummy_faculties = [
        "Fakultas Teknik", "Fakultas Ekonomi dan Bisnis", "Fakultas Pertanian", 
        "Fakultas Keguruan dan Ilmu Pendidikan", "Fakultas Ilmu Sosial dan Ilmu Politik", 
        "Fakultas Hukum", "Fakultas Kedokteran", "Fakultas Matematika dan Ilmu Pengetahuan Alam"
    ]

    col1, col2, col3 = st.columns(3)
    with col1:
        selected_years = st.multiselect("📅 Pilih Tahun", options=years, default=years)
    with col2:
        selected_affiliations = st.multiselect("🏛 Pilih Afiliasi", options=affiliations, default=affiliations)
    with col3:
        selected_faculty_ui = st.multiselect("🏫 Pilih Fakultas", options=dummy_faculties, default=dummy_faculties)

    # =========================== Filter DataFrame ===========================
    filtered_df = df[
        (df['Year'].isin(selected_years)) &
        (df['Affiliation Name'].isin(selected_affiliations))
    ]

    # =========================== Validasi dan Visualisasi ===========================
    if filtered_df.empty:
        st.warning("⚠ Tidak ada data yang sesuai dengan filter yang dipilih.")
    else:
        fig, axs = plt.subplots(1, 3, figsize=(24, 6))

        sns.lineplot(data=filtered_df, x='Year', y='total paper', hue='Affiliation Name', marker='o', ax=axs[0])
        axs[0].set_title('📄 Total Paper')
        axs[0].set_xlabel("Tahun")
        axs[0].set_ylabel("Total Paper")
        axs[0].legend(title="Afiliasi", fontsize='small', title_fontsize='medium', loc='upper left', bbox_to_anchor=(1, 1))

        sns.lineplot(data=filtered_df, x='Year', y='citation(ex self citation)', hue='Affiliation Name', marker='o', ax=axs[1])
        axs[1].set_title('🔍 Citation (ex Self Citation)')
        axs[1].set_xlabel("Tahun")
        axs[1].set_ylabel("Citation")
        axs[1].legend(title="Afiliasi", fontsize='small', title_fontsize='medium', loc='upper left', bbox_to_anchor=(1, 1))

        sns.lineplot(data=filtered_df, x='Year', y='Citation per faculty', hue='Affiliation Name', marker='o', ax=axs[2])
        axs[2].set_title('👩‍🏫 Citation Per Faculty')
        axs[2].set_xlabel("Tahun")
        axs[2].set_ylabel("Citation per Faculty")
        axs[2].legend(title="Afiliasi", fontsize='small', title_fontsize='medium', loc='upper left', bbox_to_anchor=(1, 1))

        plt.tight_layout()
        st.pyplot(fig)

        # =========================== Tabel Data ===========================
        def format_table(df_input):
            df_output = df_input.copy()
            df_output['Affiliation Name'] = df_output['Affiliation Name'].mask(df_output['Affiliation Name'].duplicated(), '')
            return df_output

        st.markdown("### 📊 Data Table")
        grouped = filtered_df.sort_values(by=['Affiliation Name', 'Year'])
        grouped = format_table(grouped)
        st.dataframe(grouped, use_container_width=True)


elif selected_menu == "Student Inbound-Outbound":
    # ========== Load Data ==========
    connection = get_connection()

    file_path = 'data_dummy_universitas_final.xlsx'
    df_program = pd.read_sql("SELECT * FROM program", connection)
    df_mahasiswa = pd.read_sql("SELECT * FROM mahasiswa", connection)
    df_jurusan = pd.read_sql("SELECT * FROM jurusan", connection)
    df_fakultas = pd.read_sql("SELECT * FROM fakultas", connection)
    df_negara = pd.read_sql("SELECT * FROM negara", connection)
    df_universitas = pd.read_sql("SELECT * FROM universitas", connection)

    # Gabungkan semua data
    df = df_program.merge(df_mahasiswa, on='mahasiswa_id', how='left')
    df = df.merge(df_jurusan[['id_jurusan', 'nama_jurusan']], on='id_jurusan', how='left')
    df = df.merge(df_fakultas[['id_fakultas', 'nama_fakultas']], on='id_fakultas', how='left')
    df = df.merge(df_negara[['id_negara', 'nama_negara']], on='id_negara', how='left')
    df = df.merge(df_universitas[['universitas_id', 'nama_universitas']], on='universitas_id', how='left')

    # Konversi durasi ke integer dulu (pastikan error NaN ditangani)
    df['durasi'] = pd.to_numeric(df['durasi'], errors='coerce').fillna(0).astype(int)

    # Baru apply format durasi_str
    df['durasi_str'] = df['durasi'].apply(lambda x: f"{x} smt" if x <= 4 else f"{x//3} sem")



    # ========== DATA UNTUK CHART ==========
    count_by_year_type = df.groupby(['tahun', 'tipe_program']).size().unstack(fill_value=0).sort_index()
    inbound_countries = df[df['tipe_program'] == 'Inbound']['nama_negara'].value_counts()

    rasio_dosen = 1
    rasio_mahasiswa = 10

    total_inbound = (df['tipe_program'] == 'Inbound').sum()
    total_outbound = (df['tipe_program'] == 'Outbound').sum()
    total_io = total_inbound + total_outbound
    inbound_pct = round((total_inbound / total_io) * 100, 2) if total_io else 0
    outbound_pct = round((total_outbound / total_io) * 100, 2) if total_io else 0


    # ========== VISUALISASI ==========
    st.markdown("""
    <h1 style="
        text-align: center; 
        font-size: 36px; 
        font-weight: bold; 
        color: #2c3e50; 
        margin-bottom: 30px;">
        Student Inbound / Outbound
    </h1>
    """, unsafe_allow_html=True)

    # ========== FILTER HORIZONTAL DI PALING ATAS ==========

    col_f1, col_f2, col_f3 = st.columns(3)

    with col_f1:
        selected_negara = st.selectbox(
            "Pilih Negara", 
            options=["Semua"] + sorted(df['nama_negara'].dropna().unique().tolist())
        )

    with col_f2:
        selected_fakultas = st.selectbox(
            "Pilih Fakultas", 
            options=["Semua"] + sorted(df['nama_fakultas'].dropna().unique().tolist())
        )

    with col_f3:
        selected_jurusan = st.selectbox(
            "Pilih Jurusan", 
            options=["Semua"] + sorted(df['nama_jurusan'].dropna().unique().tolist())
        )

    # Terapkan filter
    filtered_df = df[['nama', 'npm', 'nama_negara', 'nama_universitas',
                    'nama_jurusan', 'nama_fakultas', 'tahun',
                    'nama_program', 'durasi', 'tipe_program']].copy()


    if selected_negara != "Semua":
        filtered_df = filtered_df[filtered_df['nama_negara'] == selected_negara]

    if selected_fakultas != "Semua":
        filtered_df = filtered_df[filtered_df['nama_fakultas'] == selected_fakultas]

    if selected_jurusan != "Semua":
        filtered_df = filtered_df[filtered_df['nama_jurusan'] == selected_jurusan]

    # Update df_final dan data visualisasi
    filtered_df['durasi_str'] = filtered_df['durasi'].apply(lambda x: f"{x} smt" if x <= 4 else f"{x//3} sem")
    df_final = filtered_df[[ 'nama', 'npm', 'nama_negara', 'nama_universitas',
                            'nama_jurusan', 'nama_fakultas', 'tahun', 'nama_program', 'durasi_str']]

    df_final.columns = ['Nama', 'NPM', 'Negara Asal', 'Universitas Asal',
                        'Prodi', 'Fakultas', 'Tahun', 'Nama Program', 'Durasi']

    # Tambahkan kolom No
    df_final.insert(0, 'No', range(1, len(df_final) + 1))

    # Update data untuk chart
    count_by_year_type = filtered_df.groupby(['tahun', 'tipe_program']).size().unstack(fill_value=0).sort_index()
    # Tetap gunakan data asli untuk pie chart negara inbound
    inbound_countries = df[df['tipe_program'] == 'Inbound']['nama_negara'].value_counts()


    total_inbound = (filtered_df['tipe_program'] == 'Inbound').sum()
    total_outbound = (filtered_df['tipe_program'] == 'Outbound').sum()
    total_io = total_inbound + total_outbound
    inbound_pct = round((total_inbound / total_io) * 100, 2) if total_io else 0
    outbound_pct = round((total_outbound / total_io) * 100, 2) if total_io else 0


    # ---------- BARIS ATAS: 2 Chart ----------
    col1, col2 = st.columns([1, 1], gap="medium")

    with col1:
        st.markdown("<h5 style='text-align: center; font-size:18px; margin-top:50px;'>Jumlah Mahasiswa Outbound/Inbound per Tahun</h5>", unsafe_allow_html=True)
        fig1, ax1 = plt.subplots()
        if not count_by_year_type.empty:
            count_by_year_type.plot(kind='bar', ax=ax1, color=['cornflowerblue', 'salmon'])
            ax1.set_ylabel("Jumlah Mahasiswa")
            ax1.set_xlabel("Tahun")
            ax1.set_title("Outbound vs Inbound")
            ax1.legend(title='Tipe Program')
        else:
            ax1.text(0.5, 0.5, 'Tidak ada data untuk ditampilkan', ha='center', va='center', fontsize=12)
            ax1.axis('off')
        st.pyplot(fig1)


    with col2:
        st.markdown("<h5 style='text-align: center; font-size:18px; margin-top:50px;'>Negara Asal Inbound</h5>", unsafe_allow_html=True)
        fig2, ax2 = plt.subplots()
        inbound_countries.plot(kind='pie', autopct='%1.1f%%', ax=ax2, startangle=90)
        ax2.set_ylabel('')
        st.pyplot(fig2)


    # ---------- BARIS BAWAH: Tabel ----------
    st.markdown("<h4 style='text-align: center;'>Data Mahasiswa Inbound / Outbound</h4>", unsafe_allow_html=True)

    tab1, tab2 = st.tabs(["Inbound", "Outbound"])

    with tab1:
        df_inbound = filtered_df[filtered_df["tipe_program"] == "Inbound"].copy()
        df_inbound = df_inbound[[ 'nama', 'npm', 'nama_negara', 'nama_universitas',
                                'nama_jurusan', 'nama_fakultas', 'tahun', 'nama_program', 'durasi_str']]
        df_inbound.columns = ['Nama', 'NPM', 'Negara Asal', 'Universitas Asal',
                            'Prodi', 'Fakultas', 'Tahun', 'Nama Program', 'Durasi']
        df_inbound.insert(0, 'No', range(1, len(df_inbound) + 1))
        st.dataframe(df_inbound, use_container_width=True, hide_index=True)


    with tab2:
        df_outbound = filtered_df[filtered_df["tipe_program"] == "Outbound"].copy()
        df_outbound = df_outbound[[ 'nama', 'npm', 'nama_negara', 'nama_universitas',
                                    'nama_jurusan', 'nama_fakultas', 'tahun', 'nama_program', 'durasi_str']]
        df_outbound.columns = ['Nama', 'NPM', 'Negara Asal', 'Universitas Asal',
                            'Prodi', 'Fakultas', 'Tahun', 'Nama Program', 'Durasi']
        df_outbound.insert(0, 'No', range(1, len(df_outbound) + 1))
        st.dataframe(df_outbound, use_container_width=True, hide_index=True)

    # Tambahkan jarak sebelum pie chart bawah
    st.markdown("<div style='margin-top: 60px;'></div>", unsafe_allow_html=True)

    # ---------- BARIS PALING BAWAH: Rasio Dosen & Rasio Mahasiswa I/O ----------
    col6, col7 = st.columns(2, gap="medium")

    with col6:
        st.markdown("<h5 style='text-align: center; font-size:18px;'>Rasio Dosen dan Mahasiswa</h5>", unsafe_allow_html=True)
        fig3, ax3 = plt.subplots(figsize=(4, 4))
        wedges, texts, autotexts = ax3.pie(
            [rasio_dosen, rasio_mahasiswa],
            colors=["yellow", "green"],
            startangle=90,
            wedgeprops=dict(width=0.5),
            autopct='%1.0f%%'
        )
        ax3.set(aspect="equal")
        ax3.text(0, 0, f"{rasio_dosen} : {rasio_mahasiswa}", ha='center', va='center', fontsize=12)
        ax3.legend(['Dosen', 'Mahasiswa'], loc='center left', bbox_to_anchor=(1, 0.5))
        st.pyplot(fig3)

    with col7:
        st.markdown("<h5 style='text-align: center; font-size:18px;'>Presentase Mahasiswa I/O</h5>", unsafe_allow_html=True)
        fig4, ax4 = plt.subplots()
        total_io = total_inbound + total_outbound

        if total_io > 0:
            inbound_pct = round((total_inbound / total_io) * 100, 2)
            outbound_pct = round((total_outbound / total_io) * 100, 2)
        else:
            inbound_pct = 0
            outbound_pct = 0

        # Saat plotting
        if total_io > 0:
            wedges, texts, autotexts = ax4.pie(
                [inbound_pct, outbound_pct],
                labels=["Inbound", "Outbound"],
                colors=["yellow", "green"],
                startangle=90,
                autopct='%1.0f%%',
                wedgeprops=dict(width=0.5)
            )
        else:
            ax4.text(0.5, 0.5, "Tidak ada data", ha='center', va='center', fontsize=12)
            ax4.axis('off')

        ax4.set(aspect="equal")
        ax4.legend(["Inbound", "Outbound"], loc='center left', bbox_to_anchor=(1, 0.5))
        st.pyplot(fig4)

elif selected_menu == "Alumni":
    st.markdown('<div class="title-box">🎓 Alumni</div>', unsafe_allow_html=True)

    # Koneksi ke database
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    # Ambil data dari database alumni
    cursor.execute("""
        SELECT 
            a.nama, 
            YEAR(a.tahun_lulus) AS `Tahun Lulus`, 
            f.nama_fakultas AS Fakultas,
            p.nama_prodi AS `Program Studi`,
            s.posisi_kerja AS `Status Kerja`,
            CONCAT(TIMESTAMPDIFF(MONTH, a.tahun_lulus, a.waktu_dapat_kerja), ' Bulan') AS `Waktu Mendapatkan Kerja`
        FROM alumni a
        JOIN program_studi p ON a.program_studi_id = p.id
        JOIN fakultas f ON p.fakultas_id = f.id_fakultas
        LEFT JOIN status_kerja s ON a.status_kerja_id = s.id_status
        WHERE a.waktu_dapat_kerja IS NOT NULL
    """)
    data = cursor.fetchall()
    df = pd.DataFrame(data)

    if df.empty:
        st.warning("⚠ Tidak ada data alumni ditemukan.")
    else:
        # Filter Tahun
        tahun_list = sorted(df['Tahun Lulus'].dropna().unique())
        selected_tahun = st.multiselect("Pilih Tahun Lulus", tahun_list, default=tahun_list)

        # Filter data
        filtered_df = df[df['Tahun Lulus'].isin(selected_tahun)]

        # 🎨 Warna Kustom
        custom_colors_fakultas = ['#FF0000', '#ff7f0e', '#00FF00', '#800080', '#4ab4ea']
        custom_colors_status = ['#EF476F','#FFD166','#06D6A0','#118AB2','#9D4EDD','#FF9F1C']

        # Data untuk bar chart
        bar_data = filtered_df.groupby(["Tahun Lulus", "Fakultas"]).size().reset_index(name='Jumlah')

        # Data untuk donut chart
        status_counts = filtered_df['Status Kerja'].value_counts().reset_index()
        status_counts.columns = ['Status Kerja', 'Jumlah']

        # Buat 2 kolom berdampingan
        col1, col2 = st.columns([3, 2])

        with col1:
            bar_chart = px.bar(
                bar_data,
                x='Tahun Lulus',
                y='Jumlah',
                color='Fakultas',
                barmode='group',
                title="Jumlah Alumni per Tahun dan Fakultas",
                color_discrete_sequence=custom_colors_fakultas
            )
            bar_chart.update_layout(
                legend=dict(
                    orientation="h",
                    yanchor="bottom",
                    y=-0.3,
                    xanchor="center",
                    x=0.5
                )
            )
            st.plotly_chart(bar_chart, use_container_width=True)

        with col2:
            donut_chart = px.pie(
                status_counts,
                names='Status Kerja',
                values='Jumlah',
                hole=0.5,
                title='Profesi Alumni',
                color_discrete_sequence=custom_colors_status
            )
            st.plotly_chart(donut_chart, use_container_width=True)

        # Tabel Data Alumni full width
        st.markdown("### Data Alumni")
        st.dataframe(filtered_df, use_container_width=True)
