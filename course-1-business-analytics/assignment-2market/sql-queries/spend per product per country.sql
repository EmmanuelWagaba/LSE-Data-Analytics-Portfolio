--The total spend per product per country
SELECT
    md.country --We are looking to compare the countries
   ,SUM(md.Amtliq) 
   		AS total_Alcohol_Spend
   ,SUM(md.AmtVege) 
   		AS total_Vegetables_Spend
   ,SUM(md.AmtNonVeg) 
   		AS total_Meat_Spend
	,SUM(md.AmtPes) 
   		AS total_Fish_Spend
    ,SUM(md.AmtChocolates) 
   		AS total_Chocolate_Spend
	,SUM(md.AmtComm) 
   		AS total_Commodoties_Spend
	,SUM(md.totalspent) 
   		AS total_Spend --Summing all products, to show spend per product
FROM
    public.marketing_data md --The name of the table where this data is found
GROUP BY
    md.country
ORDER BY 
	total_Spend DESC; --Total spend included in order to order the table by the biggest spend to identify what teh biggest spenders are purchasing= Meat