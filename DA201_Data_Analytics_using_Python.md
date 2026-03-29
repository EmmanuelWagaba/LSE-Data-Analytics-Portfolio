# DA201: Data Analytics using Python

**LSE Data Analytics Career Accelerator -- Cohort 3 (2024-2025)**
**Student:** Emmanuel Wagaba

---

## Overview

Data Analytics using Python is the second course in the LSE Career Accelerator programme, building a comprehensive foundation in Python programming for data analysis. The course progresses from Python fundamentals through Pandas data manipulation, data visualisation with Matplotlib and Seaborn, web scraping and API integration, and culminates in a real-world diagnostic analysis of NHS appointment data.

---

## Modules

| Module | Topic | Key Activities |
|--------|-------|----------------|
| 1 | Python Fundamentals | Data structures (lists, dicts, sets, tuples), loops, conditionals, DateTime module, PEP 8 style, error handling |
| 2 | Introduction to Pandas | Importing CSV/Excel, Series and DataFrames, subsetting, filtering, sorting, missing values, feature scaling (Min-Max, MaxAbs), normalisation, descriptive statistics |
| 3 | Advanced Data Manipulation | DataFrame concatenation and merging, reshaping (pivot, transpose), lambda functions, user-defined functions, apply/map/applymap, GroupBy and aggregation, split-apply-combine |
| 4 | Data Visualisation | Matplotlib and Seaborn, countplots, boxplots, histograms, scatterplots, relational plots, subplots, customisation, outlier analysis |
| 5 | Data Collection and APIs | Web scraping with BeautifulSoup, API connections (OpenWeather), GET requests, JSON parsing, PostgreSQL database querying, Chinook database |
| 6 | Time Series and Forecasting | Time series data analysis, forecasting techniques, quantitative data preparation and validation |

---

## Tools and Technologies

- **Python 3** -- primary programming language (130+ Jupyter notebooks across modules)
- **Pandas** -- data manipulation, cleaning, and analysis
- **NumPy** -- numerical computations
- **Matplotlib** -- foundational plotting and visualisation
- **Seaborn** -- statistical data visualisation
- **BeautifulSoup** -- web scraping and HTML parsing
- **Requests** -- HTTP requests and API integration
- **PostgreSQL** -- database querying (Chinook database)
- **Jupyter Notebooks** -- interactive development environment
- **Microsoft Excel** -- supplementary data handling

---

## Key Learnings

- Python programming fundamentals: data structures, control flow, functions, and PEP 8 style
- Data wrangling with Pandas: importing, cleaning, transforming, and reshaping datasets
- Handling missing data: identification, imputation strategies, and removal
- Feature scaling and normalisation techniques for data preparation
- Creating publication-quality visualisations with Matplotlib and Seaborn
- Customising plots: styles, annotations, subplots, and highlighting for emphasis
- Outlier detection and analysis through visualisation
- Web scraping: extracting structured data from HTML pages
- API integration: authentication, GET requests, and JSON data parsing
- Database connectivity and SQL querying from Python
- Time series analysis fundamentals and forecasting approaches
- Split-apply-combine workflow for grouped data operations

---

## Datasets Used

| Dataset | Module | Description |
|---------|--------|-------------|
| Gold/Oil Stock Prices | 2-3 | S&P 500, Dow Jones, gold miners ETF, US oil ETF (Dec 2011--Dec 2018) |
| Daily Activity | 2, 4 | Fitness tracking data for cleaning and visualisation practice |
| FAO Raw Data | 2 | Food and Agriculture Organization dataset for data wrangling |
| Movies | 2-4 | Film data for various manipulation and visualisation exercises |
| OTT (Over-the-top) | 2-3 | Streaming platform data for merging and analysis |
| Astronauts | 3 | Space mission data for DataFrame operations |
| Classlists (A-D) | 3 | Multiple roster files for concatenation and merge practice |
| Customers/Products/Transactions | 3 | Multi-table retail data for join operations |
| Boston Marathon Results | 4 | Race data for statistical visualisation |
| Flights | 4 | Aviation data for Seaborn practice |
| Penguins | 4 | Species measurement data for multivariate visualisation |
| Transport Costs | 5 | Shipping and freight costs for data import practice |
| Chinook Database | 5 | Music store SQL database (artists, albums, tracks, invoices) |
| Raw Sales | 6 | Temporal sales data for time series analysis |
| NHS Appointments (4 files) | Assignment | Healthcare appointments, duration, and social media data |

---

## Assignment: Diagnostic Analysis of NHS Appointments

**Objective:** Conduct a diagnostic analysis of NHS appointment data to support a decision on healthcare infrastructure expansion. The analysis addressed two core questions: (1) Has there been adequate staff and capacity in the networks? (2) What was the actual utilisation of resources?

**Research Questions:**
- How frequently do appointments get missed, and what are the reasons?
- What insights can be drawn from social media data (X/Twitter) regarding patient experience?
- KPIs: missed appointments, service utilisation, and capacity by department/region

**Deliverables:**
- **Analysis Notebook:** `Wagaba_Emmanuel_DA201_Assignment_Notebook.ipynb` (4.3 MB) -- full EDA, cleaning, and diagnostic analysis
- **Technical Report:** `Wagaba_Emmanuel_DA201_Assignment_Report.docx/.pdf` -- written findings and recommendations
- **Presentation:** `Wagaba_Emmanuel_DA201_Assignment_Presentation.pptx` (1.9 MB) with video recording (17 MB)

**NHS Datasets Analysed:**

| File | Size | Description |
|------|------|-------------|
| actual_duration.csv | 14.2 MB | Appointment duration data (Dec 2021+), coded by GP system supplier |
| appointments_regional.csv | 38.7 MB | Monthly aggregated regional appointment counts (30-month period), sub-ICB location level |
| national_categories.xlsx | 28 MB | 17+ national appointment categories, service settings, context types |
| tweets.csv | 1.1 MB | X/Twitter social media data on patient healthcare experience |

**Key Data Fields:** appointment_status (Attended/DNA/Unknown), appointment_mode (Face-to-face/Telephone/Online/Video), hcp_type (GP vs Other Practice Staff), time_between_book_and_appointment, count_of_appointments (scaled estimates)

**Data Quality Challenges:**
- No national data entry standards across GP practices
- DNA appointments under-reported for certain system users (2018)
- Appointment mode data missing from Cegedim practices (July 2019+)
- Duration data quality issues for very short (<1 min) or very long (>60 min) appointments

**File Location:** `Course 2/LSE_DA201_Assignment_files/`

---

## File Inventory

| Type | Count |
|------|-------|
| Jupyter Notebooks (.ipynb) | 130+ |
| CSV Datasets | 25+ |
| Excel Files (.xlsx) | 5+ |
| SQL Files | 3 |
| Video Recordings (classes, presentation) | 5+ |
| PDF/DOCX/PPTX Documentation | 6+ |

---

## Reflections

<!--
Fill in your personal reflections below:
- Which Python library did you find most useful and why?
- What was the biggest challenge in working with the NHS data?
- How has learning Python changed your approach to data analysis compared to Tableau/SQL?
- What techniques from this course do you use most regularly now?
-->

*To be completed.*

---

## Recommendations

- **Kaggle Notebooks:** Publish a cleaned version of the NHS analysis on Kaggle to build a public data science profile
- **Expand Visualisation Skills:** Explore Plotly for interactive visualisations and Streamlit for building data apps
- **Automate Data Collection:** Build on the web scraping and API skills to create automated data pipelines for personal projects
- **Practice on Real Datasets:** Apply Pandas skills to open datasets (UK government data, WHO, World Bank) to keep skills sharp
