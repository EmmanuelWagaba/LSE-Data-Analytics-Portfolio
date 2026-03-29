WITH product_spend AS (
    -- This table calculates the total spend for each product category based on the presence of children or teens
    SELECT
         CASE
             WHEN md.kidhome > 0 OR md.teenhome > 0 THEN 'Has Children/Teens'
             ELSE 'No Children/Teens'
         END AS has_children_or_teens
        ,SUM(md.amtliq) AS total_alcohol
        ,SUM(md.amtvege) AS total_vegetables
        ,SUM(md.amtnonVeg) AS total_meat
        ,SUM(md.amtpes) AS total_fish
        ,SUM(md.amtchocolates) AS total_chocolates
        ,SUM(md.amtcomm) AS total_commodities 
    FROM
        public.marketing_data md
    WHERE
        md.marital_status NOT IN ('Alone', 'YOLO', 'Absurd') -- Filtering out specific marital statuses
    GROUP BY
        CASE
            WHEN md.kidhome > 0 OR md.teenhome > 0 THEN 'Has Children/Teens'
            ELSE 'No Children/Teens'
        END
),
most_popular AS (
    -- This table identifies the most popular product category for each "children or teens" status
    SELECT
        has_children_or_teens
        ,GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities) AS max_spend
        ,CASE
            WHEN total_alcohol = GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities) THEN 'Alcohol'
            WHEN total_vegetables = GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities) THEN 'Vegetables'
            WHEN total_meat = GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities) THEN 'Meat'
            WHEN total_fish = GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities) THEN 'Fish'
            WHEN total_chocolates = GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities) THEN 'Chocolates'
            WHEN total_commodities = GREATEST(total_alcohol, total_vegetables, total_meat, total_fish, total_chocolates, total_commodities) THEN 'Commodities'
        END AS most_popular_product
    FROM
        product_spend
)
SELECT
     ps.has_children_or_teens
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
    ps.has_children_or_teens = mp.has_children_or_teens
ORDER BY 
    mp.max_spend DESC; -- Ordering by descending total spend to help sense-check the most popular product
