--which products are the most popular in each country
    SELECT
        md.country,
        SUM(md.AmtLiq) AS total_liquids,
        SUM(md.AmtVege) AS total_vegetables,
        SUM(md.AmtNonVeg) AS total_non_veg,
        SUM(md.AmtPes) AS total_pes,
        SUM(md.AmtChocolates) AS total_chocolates,
        SUM(md.AmtComm) AS total_commodities
    FROM
        public.marketing_data md
    GROUP BY
        md.country
