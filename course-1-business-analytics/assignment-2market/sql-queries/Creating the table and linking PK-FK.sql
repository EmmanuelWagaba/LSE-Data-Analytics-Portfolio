Begin;

CREATE TABLE marketing_data (
    ID SERIAL PRIMARY KEY,
    Age INTEGER,
    Year_Birth INTEGER,
    Education VARCHAR(50),
    Marital_Status VARCHAR(50),
    Income NUMERIC(10, 2),
    Kidhome INTEGER,
    Teenhome INTEGER,
    Dt_Customer DATE,
    Recency INTEGER,
    AmtLiq INTEGER,
    AmtVege INTEGER,
    AmtNonVeg INTEGER,
    AmtPes INTEGER,
    AmtChocolates INTEGER,
    AmtComm INTEGER,
    TotalSpent INTEGER,
    AmtLiq_Pct NUMERIC(4, 2),
    AmtVege_Pct NUMERIC(4, 2),
    AmtNonVeg_Pct NUMERIC(4, 2),
    AmtPes_Pct NUMERIC(4, 2),
    AmtChocolates_Pct NUMERIC(4, 2),
    AmtComm_Pct NUMERIC(4, 2),
    NumDeals INTEGER,
    NumWebBuy INTEGER,
    NumWalkinPur INTEGER,
    TotalPurchases INTEGER,
    NumVisits INTEGER,
    Response INTEGER,
    Complain INTEGER,
    Country VARCHAR(10),
    Count_success INTEGER
);

CREATE TABLE 
	ad_data (
    	id INTEGER,
	    bulkmail_ad BOOLEAN,
    	twitter_ad BOOLEAN,
	    instagram_ad BOOLEAN,
    	facebook_ad BOOLEAN,
    	brochure_ad BOOLEAN,
    FOREIGN KEY (id) 
		REFERENCES marketing_data(id)
);


commit; 

