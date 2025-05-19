import streamlit as st
import pandas as pd
import pydeck as pdk
import plotly.express as px
from streamlit_option_menu import option_menu

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

# --- MENU LOGIC ---
if selected_menu == "Home":
    st.markdown("### Selamat datang di dashboard kolaborasi internasional Universitas Lampung.")
    st.info("Silakan pilih menu di atas untuk melihat detail kolaborasi.")

elif selected_menu == "Colab Space":
    sub_colab = st.selectbox("Pilih Submenu Colab Space", ["Internasional", "Nasional"])

    if sub_colab == "Internasional":
        st.markdown('<div class="title-box">International Collaboration</div>', unsafe_allow_html=True)

        st.markdown("""
        <div style="text-align: center;">
            <p>Menggunakan data yang disediakan oleh Scopus, indikator ini menilai tingkat keterbukaan internasional dalam hal kolaborasi untuk setiap lembaga yang dievaluasi. Indeks Margalef, yang banyak digunakan dalam ilmu lingkungan, telah diadaptasi untuk memperkirakan kekayaan mitra penelitian internasional yang dipilih untuk lembaga tertentu. Tujuan di balik indikator ini adalah untuk mengukur keragaman kemitraan penelitian internasional.</p>
            <p><b>IRN = L / ln(P)</b><br>
            <i>Di mana:</i><br>
            <b>L</b> = Total lokasi atau negara yang dicakup<br>
            <b>P</b> = Jumlah total mitra internasional yang berbeda</p>

        </div>
        """, unsafe_allow_html=True)

        selected_collab = st.selectbox("Collaborations", ["Semua Kolaborasi", "FMIPA", "FKIP", "FP", "FH", "FISIP", "FEB", "FT", "FK"])

        collab_data = pd.DataFrame({
            'country': ['United States', 'Japan', 'United Kingdom', 'China', 'Germany', 'France', 'India', 'Australia', 'Taiwan', 'South Korea', 'Singapore', 'Malaysia'],
            'lat': [37.7749, 35.6895, 51.5074, 39.9042, 52.52, 48.8566, 28.6139, -35.2809, 23.6978, 37.5665, 1.3521, 3.1390],
            'lon': [-122.4194, 139.6917, -0.1278, 116.4074, 13.4050, 2.3522, 77.2090, 149.13, 120.9605, 126.9780, 103.8198, 101.6869]
        })

        col_map, col_info = st.columns([4, 1.5])

        with col_map:
            st.pydeck_chart(pdk.Deck(
                map_style='mapbox://styles/mapbox/light-v9',
                initial_view_state=pdk.ViewState(latitude=0, longitude=100, zoom=1.2, pitch=0),
                layers=[
                    pdk.Layer('ScatterplotLayer', data=collab_data, get_position='[lon, lat]', get_radius=400000,
                              get_color='[0, 102, 204, 160]', pickable=True),
                    pdk.Layer("ArcLayer", data=collab_data, get_source_position="[101.3737, -5.3971]",
                              get_target_position="[lon, lat]", get_source_color=[255, 100, 100],
                              get_target_color=[0, 100, 255], auto_highlight=True, width_scale=0.5, get_width=2)
                ],
            ), height=550)

        with col_info:
            jurusan = st.selectbox("Jurusan", [
                "Pilih Jurusan", "Kimia", "Biologi", "Matematika", "Fisika", "Ilmu Komputer",
                "Ilmu Hukum", "Teknik Elektro", "Pendidikan Dokter", "Ilmu Pemerintahan",
                "Peternakan", "Teknik Pertanian"
            ])

            st.markdown("""
            <div style="border-radius: 12px; overflow-y: auto; max-height: 500px; 
                        box-shadow: 0 4px 10px rgba(0,0,0,0.1); text-align: center; margin-top: 5px;">
                <div style="background-color: #ffffff; padding: 1rem;">
                    <div style="font-weight: bold; font-size: 1.6rem;">IRN</div>
                    <div style="font-size: 0.9rem;">International Research Network Collaboration</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.6rem; font-weight: bold; color: #1E4EB3;">
                    16.57
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem;font-size: 1.6rem; font-weight: bold;">
                    L
                    <div style="font-weight: normal; font-size: 0.9rem;">Total lokasi atau negara yang dicakup</div>
                </div>
                <div style="background-color: #fff8e1; padding: 0.8rem; font-size: 1.6rem; font-weight: bold;">
                    127
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem; font-size: 1.6rem;font-weight: bold;">
                    P
                    <div style="font-weight: normal; font-size: 0.9rem;">Jumlah total mitra internasional yang berbeda</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.6rem; font-weight: bold; color: #1E4EB3;">
                    127
                </div>
            </div>
        """, unsafe_allow_html=True)

        chart_data = pd.DataFrame({
            'Country': ['United States', 'Japan', 'United Kingdom', 'China', 'Germany', 'France', 'India', 'Australia', 'Taiwan', 'South Korea', 'Singapore', 'Malaysia'],
            'Dosen Tamu': [13, 3, 8, 10, 8, 9, 20, 13, 8, 10, 9, 5],
            'Akademik': [9, 16, 7, 5, 10, 20, 13, 10, 3, 15, 10, 10],
            'Riset dan Publikasi': [12, 15, 2, 12, 12, 13, 8, 9, 10, 15, 15, 13],
            'Seminar dan Workshop': [10, 13, 0, 10, 9, 8, 6, 9, 5, 10, 9, 13]
        })
        melted = chart_data.melt(id_vars="Country", var_name="Jenis", value_name="Jumlah")
        fig = px.bar(melted, x="Country", y="Jumlah", color="Jenis", barmode="stack", height=500,
                     color_discrete_map={
                         "Dosen Tamu": "#FFF1D3",
                         "Akademik": "#F1DEBB",
                         "Riset dan Publikasi": "#E7D280",
                         "Seminar dan Workshop": "#E3BE45"
                     })
        st.markdown("## Kolaborasi per Negara")
        st.plotly_chart(fig, use_container_width=True)

    elif sub_colab == "Nasional":
        st.markdown('<div class="title-box">National Collaboration</div>', unsafe_allow_html=True)

        st.markdown("""
        <div style="text-align: center;">
            <p>Menggunakan data yang disediakan oleh Universitas, indikator ini menilai tingkat keterbukaan nasional dalam hal kolaborasi untuk setiap lembaga yang dievaluasi. Indeks Margalef, yang banyak digunakan dalam ilmu lingkungan, telah diadaptasi untuk memperkirakan kekayaan mitra penelitian nasional yang dipilih untuk lembaga tertentu. Tujuan di balik indikator ini adalah untuk mengukur keragaman kemitraan penelitian nasional.</p>
            <p><b>NRN = L / ln(P)</b><br>
            <i>Di mana:</i><br>
            <b>L</b> = Total lokasi / provinsi yang dicakup<br>
            <b>P</b> = Jumlah total mitra nasional yang berbeda</p>
        </div>
        """, unsafe_allow_html=True)

        colA, colB = st.columns([2.7, 1])
        with colA:
            selected_collab = st.selectbox("*:blue[Collaborations]*", 
                ["Fakultas Hukum", "Fakultas Teknik", "FISIP", "FEB", "FMIPA", "FKIP", "FP", "FK"]
            )
        with colB:
            jurusan = st.selectbox("Jurusan", ["Pilih Jurusan", "Ilmu Hukum", "Teknik Sipil", "Manajemen", "Biologi", "Fisika", "Pendidikan Kimia"])

        # Data dummy: LOKASI NASIONAL
        provinsi_data = pd.DataFrame({
            'provinsi': ['DKI Jakarta', 'Sumatera Selatan', 'Sumatera Barat', 'Sumatera Utara', 'Jawa Barat', 'Jawa Tengah', 'DI Yogyakarta', 'Bali', 'Papua', 'Banten', 'Jambi', 'Bangka Belitung'],
            'lat': [-6.2, -3.3, -0.9, 3.6, -6.9, -7.0, -7.8, -8.4, -4.3, -6.2, -1.6, -2.7],
            'lon': [106.8, 104.7, 100.4, 98.7, 107.6, 110.4, 110.4, 115.2, 138.0, 106.1, 103.6, 106.0]
        })

        col_map, col_info = st.columns([4, 1.5])
        with col_map:
            st.pydeck_chart(pdk.Deck(
                map_style='mapbox://styles/mapbox/light-v9',
                initial_view_state=pdk.ViewState(latitude=-2.5, longitude=117, zoom=3.8, pitch=0),
                layers=[
                    pdk.Layer('ScatterplotLayer', data=provinsi_data, get_position='[lon, lat]', get_radius=40000,
                              get_color='[0, 102, 204, 160]', pickable=True),
                    pdk.Layer("ArcLayer", data=provinsi_data, get_source_position="[105.2667, -5.4264]",  # Titik Unila
                              get_target_position="[lon, lat]", get_source_color=[255, 100, 100],
                              get_target_color=[0, 100, 255], auto_highlight=True, width_scale=0.5, get_width=2)
                ],
            ))

        with col_info:
            st.markdown("""
            <div style="border-radius: 12px; overflow: hidden; box-shadow: 0 4px 10px rgba(0,0,0,0.1); text-align: center;">
                <div style="background-color: #ffffff; padding: 1rem;">
                    <div style="font-weight: bold; font-size: 1.2rem;">NRN</div>
                    <div style="font-size: 0.9rem;">National Research Network Collaboration</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.8rem; font-weight: bold; color: #1E4EB3;">
                    16.57
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem; font-weight: bold;">
                    L
                    <div style="font-weight: normal; font-size: 0.9rem;">Total lokasi atau negara yang dicakup</div>
                </div>
                <div style="background-color: #fff8e1; padding: 0.8rem; font-size: 1.6rem; font-weight: bold;">
                    127
                </div>
                <div style="background-color: #ffffff; padding: 0.5rem; font-weight: bold;">
                    P
                    <div style="font-weight: normal; font-size: 0.9rem;">Jumlah total mitra nasional yang berbeda</div>
                </div>
                <div style="background-color: #e6f0fc; padding: 0.8rem; font-size: 1.6rem; font-weight: bold; color: #1E4EB3;">
                    127
                </div>
            </div>
            """, unsafe_allow_html=True)

        # Bar Chart Data
        chart_data = pd.DataFrame({
            'Provinsi': ['DKI Jakarta', 'Sumatera Selatan', 'Sumatera Barat', 'Sumatera Utara', 'Jawa Barat', 'Jawa Tengah', 'DI Yogyakarta', 'Bali', 'Papua', 'Banten', 'Jambi', 'Bangka Belitung'],
            'Akademik': [13, 6, 5, 12, 13, 13, 10, 8, 6, 5, 7, 4],
            'Riset dan Publikasi': [14, 4, 5, 11, 12, 13, 8, 6, 5, 4, 5, 3],
            'Seminar dan Workshop': [15, 5, 4, 10, 10, 10, 8, 7, 6, 4, 6, 2],
            'Dosen Tamu': [12, 5, 3, 9, 10, 10, 6, 5, 5, 3, 4, 1]
        })

        melted = chart_data.melt(id_vars="Provinsi", var_name="Jenis", value_name="Jumlah")
        fig = px.bar(melted, x="Provinsi", y="Jumlah", color="Jenis", barmode="stack", height=500,
                     color_discrete_map={
                         "Dosen Tamu": "#A1D3A2",
                         "Akademik": "#F1DEBB",
                         "Riset dan Publikasi": "#E7D280",
                         "Seminar dan Workshop": "#E3BE45"
                     })
        st.markdown("## Kolaborasi per Provinsi")
        st.plotly_chart(fig, use_container_width=True)
        
elif selected_menu == "Faculty Staff":
    st.markdown("## 👨‍🏫 Faculty Staff")
    st.info("Halaman ini menampilkan informasi tentang dosen dan staf fakultas.")

elif selected_menu == "Student Inbound-Outbound":
    inbound_outbound_sub = st.selectbox("Pilih Submenu Student Inbound-Outbound", ["Inbound", "Outbound"])
    if inbound_outbound_sub == "Inbound":
        st.markdown("## ⬇️ Student Inbound")
        st.info("Menampilkan mahasiswa luar yang datang ke Unila.")
    else:
        st.markdown("## ⬆️ Student Outbound")
        st.info("Menampilkan mahasiswa Unila yang berangkat ke luar negeri.")

elif selected_menu == "Alumni":
    st.markdown('<div class="title-box">🎓 Alumni</div>', unsafe_allow_html=True)

    # Load dataset
    data = pd.read_csv("data_alumni_dummy_100.csv")
    df = pd.DataFrame(data)

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
