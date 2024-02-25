CREATE EXTENSION postgis;

SELECT nombre_cie AS scientific_name, nombre_com AS nombre_comun_es,
COUNT(DISTINCT id) AS number_of_trees FROM censo_arboreo_cali 
GROUP BY scientific_name, nombre_comun_es 
ORDER BY number_of_trees DESC;