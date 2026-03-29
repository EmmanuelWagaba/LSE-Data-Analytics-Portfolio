--The total spend per country. In excel, I've already summed the total spend of each customer into column "totalspent".
SELECT
    md.country --We are looking to compare the countries
   ,SUM(md.totalspent) 
   		AS totalspent
FROM
    public.marketing_data md --The name of the table where this data is found
GROUP BY
    md.country
ORDER BY 
	totalspent DESC; -- We've ordered this in descending order of total_spent, to identify the top spending country

--The results show that Spain is the biggest spedning country at $659,557
