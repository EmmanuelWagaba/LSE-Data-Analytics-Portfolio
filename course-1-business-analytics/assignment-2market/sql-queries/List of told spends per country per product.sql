SELECT
	 country 
	,'Alcohol' AS product
	,SUM(amtliq) AS total_spend
FROM
	marketing_data
GROUP BY 
	country

UNION ALL
SELECT
	 country
	,'Vegetables' AS product
	,SUM(amtvege) AS total_spend
FROM
	marketing_data
GROUP BY 
	country

UNION ALL
SELECT
	 country
	,'Non-Veg' AS product
	,SUM(amtnonveg) AS total_spend
FROM
	marketing_data
GROUP BY
	country
	
UNION ALL
SELECT
	 country
	 ,'Fish' AS product
	 ,SUM(AmtPes) AS total_spend
FROM
	marketing_data
GROUP BY
	country
UNION ALL
SELECT
	country
	,'Chocolates' AS product
	,SUM(amtchocolates) AS total_spend
FROM
	marketing_data
GROUP BY
	country
UNION ALL
SELECT
	country
	,'Communication' AS product, 
	SUM(amtcomm) AS total_spend
FROM marketing_data
GROUP BY 
	country
ORDER BY Country, total_spend DESC;