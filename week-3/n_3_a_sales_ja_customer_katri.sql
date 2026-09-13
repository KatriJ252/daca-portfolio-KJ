   
  -- Lihtne INNER JOIN: kliendid, kes on ostnud
SELECT c.first_name, c.last_name, c.email, c.city, 
s.sale_id, s.sale_date, s.total_price 
FROM sales s  INNER JOIN customers c
ON s.customer_id = c.customer_id    LIMIT 20;    


  -- TOP 10 klienti kogumüügi järgi
SELECT c.first_name || ' ' || c.last_name AS klient,        c.city,        
COUNT(DISTINCT s.sale_id) AS ostude_arv, SUM(s.total_price) AS kogumüük    
FROM sales s    INNER JOIN customers c ON s.customer_id = c.customer_id    
GROUP BY c.customer_id, c.first_name, c.last_name, c.city    
ORDER BY kogumüük DESC    LIMIT 10;    

-- Müük linnade kaupa    
SELECT c.city, COUNT(DISTINCT c.customer_id) AS kliente,        
COUNT(s.sale_id) AS oste, SUM(s.total_price) AS kogumüük    
FROM sales s INNER JOIN customers c ON s.customer_id = c.customer_id    
GROUP BY c.city ORDER BY kogumüük DESC;    


-- Müük lojaalsustasemete kaupa    
SELECT c.loyalty_tier, COUNT(DISTINCT c.customer_id) AS kliente,
SUM(s.total_price) AS kogumüük FROM sales s    
INNER JOIN customers c ON s.customer_id = c.customer_id    
GROUP BY c.loyalty_tier    ORDER BY kogumüük DESC;    


-- Kokkuvõte Annale:
-- Parimad kliendid: Tiina Pärn 27668.02€, Priit Rand 26286.10€, Kevin Org 23467.13€
-- Enim müüke Tallinn 1 006 252.88€
-- Kasumlikeim loyalty_tier on Null - ilmselt tavaklient, müüke kokku 1071805.32€
