# Kimia Farma Business Analytics — Final Task

Project analytics untuk menganalisis performa bisnis Kimia Farma tahun 2020–2023.

## 📊 Objectives
- Menggabungkan data transaksi, produk, cabang, dan inventory
- Membuat data mart analisa di BigQuery
- Menjalankan SQL untuk business insight
- Membuat dashboard interaktif di Looker Studio

## 📁 Dataset
| Table | Content |
|---|---|
| kf_final_transaction | Data transaksi dan rating pelanggan |
| kf_product | Informasi produk |
| kf_inventory | Data stok cabang |
| kf_kantor_cabang | Data detail cabang & rating |

## 🛠️ Tech Stack
- **Google BigQuery**
- **SQL**
- **Google Looker Studio**
- **GitHub**

## 🧠 Data Mart
Tabel analisa: `kimia_farma.transaction_analysis`  
Berisi penggabungan tabel + kalkulasi:
- Nett Sales
- Profit Margin Rules
- Nett Profit
- Rating Analisis

## 📈 Dashboard Features
- KPI Scorecards (Sales, Profit, Transaction, Rating)
- YoY Sales Trend
- Top 10 Provinces
- Geo Profit Map
- Rating Outlier Branches
- Full filters (Year, Provinsi, Cabang)

## 🔁 Reproducibility
1. Upload CSV ke BigQuery
2. Run `create_analysis_table.sql`
3. Connect `transaction_analysis` ke Looker Studio
4. Bangun dashboard

## 👤 Author
Dian Ayu Rahmawati
2025  