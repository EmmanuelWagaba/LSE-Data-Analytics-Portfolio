WITH product_spend AS (-- This table calculates the total spend for each product category per country
    SELECT
         md.country
		,SUM(md.amtliq) AS total_alcohol
		,SUM(md.amtvege) AS total_vegetables
		,SUM(md.amtnonVeg) AS total_meat
		,SUM(md.amtpes) AS total_fish
		,SUM(md.amtchocolates) AS total_chocolates
		,SUM(md.amtcomm) AS total_commodities
    FROM
        public.marketing_data md
	WHERE md.marital_status 
		NOT IN ('Alone','YOLO','Absurd')
    GROUP BY
        md.country)
	,most_popular AS (-- This table identifies the most popular product category per country

    SELECT
         country
		 ,GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities)
			AS max_spend
		,CASE
            WHEN total_alcohol =
				GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities)
					THEN 'Alcohol'
            WHEN total_vegetables =
				GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities)
					THEN 'Vegetables'
            WHEN total_meat =
				GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities)
					THEN 'Meat'
            WHEN total_fish =
				GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities)
					THEN 'Fish'
            WHEN total_chocolates =
				GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities)
					THEN 'Chocolates'
            WHEN total_commodities =
				GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities)
					THEN 'Commodities'
        END AS most_popular_product
    FROM
        product_spend)
SELECT --This output allows us to see the total spend on each country for each product, identifying the most popular product
	 ps.country
	,ps.total_alcohol
	,ps.total_vegetables
	,ps.total_meat
	,ps.total_fish
	,ps.total_chocolates
	,ps.total_commodities
	,mp.most_popular_product
FROM
    product_spend ps
JOIN
    most_popular mp
ON
    ps.country = mp.country
ORDER BY 
	mp.max_spend DESC; --Decending order of most spent per product to help sense check the output of "most_popular_product";


