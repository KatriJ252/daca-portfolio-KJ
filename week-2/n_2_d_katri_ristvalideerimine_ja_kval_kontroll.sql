-- Orbid müügid — kas on customer_id, mida pole customers tabelis?

SELECT COUNT(*) AS orb_klient
FROM sales
WHERE customer_id IS NOT NULL
  AND customer_id NOT IN (SELECT customer_id FROM customers WHERE customer_id IS NOT NULL);
  -- olematuid kleinte oli 0 

-- Orbid müügid — kas on product_id, mida pole products tabelis?

SELECT COUNT(*) AS orb_toode
FROM sales
WHERE product_id IS NOT NULL
  AND product_id NOT IN (SELECT product_id FROM products WHERE product_id IS NOT NULL);
  -- olematuid  tooteid oli 0

-- Kontrolli, kas on kliente, kes pole kunagi ostnud
SELECT COUNT(*) AS vaimkliendid
FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM sales WHERE customer_id IS NOT NULL);
  -- kliente kes pole kunagi ostnud - 592 

-- Kontrolli, kas on tooteid, mida pole kunagi müüdud
SELECT COUNT(*) AS vaimtooted
FROM products
WHERE product_id NOT IN (SELECT product_id FROM sales WHERE product_id IS NOT NULL);
  -- tooteid mida pole kunagi müüdud - 12

Kategooria	    Leitud probleeme   	Kirjeldus
Orbid kliendid      	0	            Müük viitab olematule kliendile
Orbid tooted      		0           	Müük viitab olematule tootele
Vaimkliendid	      	592         	Klient ei ole kunagi ostnud
Vaimtooted	        	12	          Toodet pole kunagi müüdud
KOKKU probleeme	    	604	          Vaimkliendid ja tooted- Kliendid pole kunagi toonud sisse tulu 
                                    ja tooted hoiavad kinni ruumi laos.

