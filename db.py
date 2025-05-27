import mysql.connector

def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="",  # Ganti jika MySQL kamu pakai password
        database="wcu"
    )