
--Tootekategooriate koondandmed:

  SELECT p.category, COUNT(DISTINCT p.product_id) AS tooteid,
  ROUND(AVG(p.retail_price), 2) AS keskmine_hind, MIN(p.retail_price) AS min_hind,      
  MAX(p.retail_price) AS max_hind FROM products p GROUP BY p.category ORDER BY tooteid DESC;    

  --Müüdud vs laos

  SELECT p.category, SUM(s.quantity) AS müügikogus,
  AVG(s.quantity) AS keskmine_müük_toote_kohta, 
  COUNT(DISTINCT p.product_id) AS tooteid
  FROM products p JOIN sales s ON p.product_id = s.product_id
  GROUP BY p.category HAVING SUM(s.quantity) > 100
  ORDER by müügikogus DESC;

  --Toodete järjestus kategooria sees 

  SELECT p.product_name, p.category, p.retail_price, 
  ROW_NUMBER() OVER ( PARTITION BY p.category        
  ORDER BY p.retail_price DESC) 
  AS koht_kategoorias FROM products p;

  --Kokkuvõte
   --Meeste riided ja jalanõud on kõige kasumlikumad (keskmised hinnad 190€ ja 214€ ja müügikogused 4121 ja 3737 ühikut)
  --Soovitus Annale
    Hoida jalanõude ja meeste riiete saadavus kõrgel. Samal ajal tõsta aksessuaaride nähtavust kampaaniate ja visuaalse esitluse kaudu — seal peitub potentsiaal kasumlikkuse kasvuks.
  
  --Baas 
SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS tooteid_kategoorias,
    SUM(s.quantity) AS müügikogus,
    AVG(s.quantity) AS keskmine_müük_toote_kohta
FROM products p JOIN sales s ON p.product_id = s.product_id
GROUP BY p.category
HAVING SUM(s.quantity) > 300   
ORDER BY müügikogus DESC;