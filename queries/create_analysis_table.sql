CREATE OR REPLACE TABLE kimia_farma.transaction_analysis AS
SELECT
   t.transaction_id,
   t.date,
   c.branch_id,
   c.branch_name,
   c.kota,
   c.provinsi,
   c.rating AS rating_cabang,
   t.customer_name,
   p.product_id,
   p.product_name,
   t.price AS actual_price,
   t.discount_percentage,
   CASE 
        WHEN t.price <= 50000 THEN 0.10
        WHEN t.price <= 100000 THEN 0.15
        WHEN t.price <= 300000 THEN 0.20
        WHEN t.price <= 500000 THEN 0.25
        ELSE 0.30
   END AS persentase_gross_laba,
   t.price * (1 - t.discount_percentage) AS nett_sales,
   (t.price * (1 - t.discount_percentage)) *
        CASE 
            WHEN t.price <= 50000 THEN 0.10
            WHEN t.price <= 100000 THEN 0.15
            WHEN t.price <= 300000 THEN 0.20
            WHEN t.price <= 500000 THEN 0.25
            ELSE 0.30
        END AS nett_profit,
   t.rating AS rating_transaksi
FROM `kimia_farma.kf_final_transaction` t
LEFT JOIN `kimia_farma.kf_product` p USING(product_id)
LEFT JOIN `kimia_farma.kf_kantor_cabang` c USING(branch_id);