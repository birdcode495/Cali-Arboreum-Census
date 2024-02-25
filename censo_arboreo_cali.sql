CREATE EXTENSION postgis;

SELECT nombre_cie AS scientific_name, COUNT(DISTINCT id) AS number_of_trees
FROM censo_arboreo_cali GROUP BY scientific_name ORDER BY number_of_trees DESC;