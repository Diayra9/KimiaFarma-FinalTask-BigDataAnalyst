-- Year Over Year Nett Sales
-- =============================
SELECT 
  EXTRACT(YEAR FROM date) AS year,
  SUM(nett_sales) AS total_sales
FROM kimia_farma.transaction_analysis
GROUP BY year
ORDER BY year;

-- Top 10 Total Transaksi per Provinsi
-- =============================
SELECT 
  provinsi,
  COUNT(transaction_id) AS total_transactions
FROM kimia_farma.transaction_analysis
GROUP BY provinsi
ORDER BY total_transactions DESC
LIMIT 10;

-- Top 10 Nett Sales per Provinsi
-- =============================
SELECT 
  provinsi,
  SUM(nett_sales) AS total_nett_sales
FROM kimia_farma.transaction_analysis
GROUP BY provinsi
ORDER BY total_nett_sales DESC
LIMIT 10;

-- Top 5 Branch High Rating Cabang but Low Rating Transaksi
-- =============================
SELECT 
  branch_name,
  rating_cabang,
  AVG(rating_transaksi) AS avg_rating_transaksi
FROM kimia_farma.transaction_analysis
GROUP BY branch_name, rating_cabang
ORDER BY rating_cabang DESC, avg_rating_transaksi ASC
LIMIT 5;

-- Total Profit per Province (Geo Map)
-- =============================
SELECT 
  provinsi,
  SUM(nett_profit) AS total_profit
FROM kimia_farma.transaction_analysis
GROUP BY provinsi
ORDER BY total_profit DESC;