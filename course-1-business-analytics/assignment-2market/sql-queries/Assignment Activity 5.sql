--Testing the joins
/*
SELECT * FROM marketing_data md
LEFT JOIN ad_data ad ON md.id = ad.id
ORDER BY bulkmail_ad asc
;*/
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
--Now looking checking the sum function works per social media platform
SELECT 
    md.country,
    SUM(CASE WHEN ad.twitter_ad THEN md.count_success ELSE 0 END) AS twitter_success,
    SUM(CASE WHEN ad.instagram_ad THEN md.count_success ELSE 0 END) AS instagram_success,
    SUM(CASE WHEN ad.facebook_ad THEN md.count_success ELSE 0 END) AS facebook_success
FROM 
    marketing_data md
LEFT JOIN 
    ad_data ad 
ON 
    md.id = ad.id
GROUP BY 
    md.country
ORDER BY 
    md.country;
*/
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
--Asnwering the first question looking into the platform with the most effective advertisement per country
WITH platform_success AS (--Section sums the total successful rate for each of the social outs, Twitter,Instagram and Facebook
    SELECT 
         md.country
		,SUM(CASE WHEN ad.twitter_ad THEN md.count_success ELSE 0 END) AS twitter_success
		,SUM(CASE WHEN ad.instagram_ad THEN md.count_success ELSE 0 END) AS instagram_success
		,SUM(CASE WHEN ad.facebook_ad THEN md.count_success ELSE 0 END) AS facebook_success
    FROM 
         marketing_data md
    LEFT JOIN 
         ad_data ad 
    ON 
         md.id = ad.id
    GROUP BY 
         md.country)
SELECT--This part of the query produces the social platform with the greatest number per country from the above statement
     country
	,twitter_success
	,instagram_success
	,facebook_success,
    CASE 
        WHEN twitter_success =
			GREATEST(twitter_success, instagram_success, facebook_success)
				THEN 'Twitter'
        WHEN instagram_success =
			GREATEST(twitter_success, instagram_success, facebook_success)
				THEN 'Instagram'
        WHEN facebook_success =
			GREATEST(twitter_success, instagram_success, facebook_success)
				THEN 'Facebook'
    END 
		AS best_platform
FROM 
    platform_success
ORDER BY 
    country; */
--The final result is a table that lists the countries of 2Markets customers, alongside the success rate of each social media marketing. 
--Where the column identifies the best platform for each country
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--To identify which social media platform has the most success per marital status, I will use this SQL statement again, with adjustments.

WITH platform_success AS (
    SELECT --This select aggregate the total spend per marital status
         md.marital_status
		,SUM(CASE WHEN ad.twitter_ad THEN md.count_success ELSE 0 END) AS twitter_success
		,SUM(CASE WHEN ad.instagram_ad THEN md.count_success ELSE 0 END) AS instagram_success
		,SUM(CASE WHEN ad.facebook_ad THEN md.count_success ELSE 0 END) AS facebook_success
    FROM 
         marketing_data md
    LEFT JOIN 
         ad_data ad 
    	ON 
         md.id = ad.id
	WHERE md.marital_status 
		NOT IN ('Alone','YOLO','Absurd')
	GROUP BY 
         md.marital_status)
SELECT
    marital_status
	,twitter_success
	,instagram_success
	,facebook_success,
    CASE 
        WHEN twitter_success =
			GREATEST(twitter_success, instagram_success, facebook_success)
				THEN 'Twitter'
        WHEN instagram_success =
			GREATEST(twitter_success, instagram_success, facebook_success)
				THEN 'Instagram'
        WHEN facebook_success =
			GREATEST(twitter_success, instagram_success, facebook_success)
				THEN 'Facebook'
    END 
		AS best_platform
FROM 
    platform_success
WHERE md.marital_status 
ORDER BY 
	best_platform ASC;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Final question here is to determine the most effect social media platform(/s) per country. Using lead conversions, and spend per product.
/*
WITH total_spend AS (-- Summarizes total spending per product type per country
    SELECT
         md.country
        ,SUM(md.amtliq) AS total_alcohol
        ,SUM(md.amtvege) AS total_vegetables
        ,SUM(md.amtnonveg) AS total_meat
        ,SUM(md.amtpes) AS total_fish
        ,SUM(md.amtchocolates) AS total_chocolates
        ,SUM(md.amtcomm) AS total_commodities
    FROM 
        public.marketing_data md
	WHERE md.marital_status 
		NOT IN ('Alone','YOLO','Absurd')
    GROUP BY 
        md.country
),
social_media_success AS (-- Aggregates the total leads from Twitter, Instagram, and Facebook per country
    SELECT 
        md.country
		,SUM(CASE WHEN ad.twitter_ad THEN md.count_success ELSE 0 END) AS twitter_success
		,SUM(CASE WHEN ad.instagram_ad THEN md.count_success ELSE 0 END) AS instagram_success
		,SUM(CASE WHEN ad.facebook_ad THEN md.count_success ELSE 0 END) AS facebook_success
    FROM 
        public.marketing_data md
    LEFT JOIN 
        public.ad_data ad 
    ON 
        md.id = ad.id
    GROUP BY 
        md.country),
platform_comparison 
	AS (-- Determines the most effective social media platform based on success per country
    SELECT
         ts.country
		,ts.total_alcohol
		,ts.total_vegetables
		,ts.total_meat
		,ts.total_fish
		,ts.total_chocolates
		,ts.total_commodities
		,sms.twitter_success
		,sms.instagram_success
		,sms.facebook_success,
        CASE
            WHEN sms.twitter_success =
				GREATEST(sms.twitter_success, sms.instagram_success, sms.facebook_success)
					THEN 'Twitter'
            WHEN sms.instagram_success =
				GREATEST(sms.twitter_success, sms.instagram_success, sms.facebook_success)
					THEN 'Instagram'
            WHEN sms.facebook_success =
				GREATEST(sms.twitter_success, sms.instagram_success, sms.facebook_success) 
					THEN 'Facebook'
        END 
			AS most_effective_platform
    FROM 
        total_spend ts
    LEFT JOIN 
        social_media_success sms 
    ON 
        ts.country = sms.country
)
SELECT
     pc.country
	,pc.total_alcohol
	,pc.total_vegetables
	,pc.total_meat
	,pc.total_fish
	,pc.total_chocolates
	,pc.total_commodities
	,pc.twitter_success
	,pc.instagram_success
	,pc.facebook_success
	,pc.most_effective_platform
FROM 
    platform_comparison pc
ORDER BY 
    pc.country;

--The outcome of this query will allow us to see patterns in the effectivenees of each advertising platform, in relation to spend per product
