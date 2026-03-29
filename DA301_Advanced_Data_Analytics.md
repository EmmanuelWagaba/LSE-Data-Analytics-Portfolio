# DA301: Advanced Data Analytics

**LSE Data Analytics Career Accelerator -- Cohort 3 (2024-2025)**
**Student:** Emmanuel Wagaba

---

## Overview

Advanced Data Analytics is the third course in the LSE Career Accelerator programme, introducing machine learning, statistical modelling, and natural language processing. The course spans both Python (scikit-learn, spaCy, NLTK) and R (ggplot2, base R), covering supervised learning (regression, classification), unsupervised learning (clustering), text analytics, and sentiment analysis. Two masterclasses provide additional depth in linear regression and logistic regression/decision trees.

---

## Modules

| Module | Topic | Key Activities |
|--------|-------|----------------|
| 1 | Linear Regression | Simple and multiple linear regression (scikit-learn), OLS method, best-fit line, homoscedasticity testing, A/B testing, sensitivity and scenario analysis, stock returns analysis |
| 2 | Classification and Decision Trees | Binomial logistic regression, decision trees (with pruning), Random Forest classifiers, Telcom National case study |
| 3 | Clustering and Unsupervised Learning | K-means clustering, hierarchical clustering, Support Vector Machines (SVM) for validation, Random Forest for cluster validation |
| 4 | Text Analytics and Sentiment Analysis | Google/YouTube API integration, data preprocessing for text, Naive Bayes classifier, VADER sentiment analysis (NLTK), TextBlob sentiment analysis |
| 5 | Data Manipulation in R | Data frames, data import/export, string manipulation, ggplot2 visualisation, univariate and multivariate graphs, Bennie's Books case study |
| 6 | Advanced R Analytics | Descriptive statistics in R, simple and multiple linear regression, time series analysis, interactive visualisations (Plotly), clustering in R, Grandfather's Clocks case study |

---

## Tools and Technologies

- **Python 3** -- primary language for ML and NLP (56+ Jupyter notebooks in Course 3)
- **scikit-learn** -- linear regression, logistic regression, decision trees, Random Forest, K-means, SVM
- **spaCy** -- NLP pipeline (dedicated spacy_project/ with virtual environment)
- **NLTK** -- VADER sentiment analysis
- **TextBlob** -- sentiment analysis library
- **R / RStudio** -- statistical analysis and visualisation (34+ R scripts, .Rproj file)
- **ggplot2** -- R data visualisation
- **Plotly (R)** -- interactive visualisations
- **Google/YouTube API** -- data extraction for text analytics
- **Pandas, NumPy, Matplotlib, Seaborn** -- data manipulation and visualisation

---

## Key Learnings

- Building and evaluating linear regression models (simple and multiple)
- Understanding model assumptions: homoscedasticity, multicollinearity, residual analysis
- A/B testing methodology and statistical significance
- Logistic regression for binary classification problems
- Decision tree construction, pruning, and interpretation
- Random Forest ensemble methods for improved prediction accuracy
- K-means and hierarchical clustering for customer segmentation
- Support Vector Machines for classification validation
- Natural language processing: text preprocessing, tokenisation, sentiment scoring
- Sentiment analysis using multiple approaches (rule-based VADER, ML-based Naive Bayes, lexicon-based TextBlob)
- API integration for data extraction (YouTube comments)
- R programming: data manipulation, statistical analysis, and ggplot2 visualisation
- Time series analysis in R
- Interactive visualisations with Plotly
- Comparing Python and R approaches to the same analytical problems

---

## Datasets Used

| Dataset | Module | Description |
|---------|--------|-------------|
| A/B Testing Data (ab_data.csv) | 1 | Experimental data for testing statistical significance |
| Salary Data | 1 | Income data for linear regression modelling |
| Stock Returns | 1 | Financial data for sensitivity and scenario analysis |
| Telcom National | 2 | Telecommunications customer data for classification case study |
| Breast Cancer Data | 2-3 | Medical data for classification practice |
| Customer Data (multiple versions) | 2-3 | Behavioural data for clustering and classification |
| E-commerce Data | 2-3 | Online retail data for predictive modelling |
| House Prices | 1-2 | Property data for regression practice |
| Car4U | 2 | Used car data for decision tree modelling |
| Bike Shop Data | 3 | Retail cycling data for clustering |
| Oysters / AIS Data | 3 | Biological data for clustering exercises |
| Emails (31 MB) | Masterclass | Email classification dataset for logistic regression |
| Healthcare Stroke | Masterclass | Patient data for decision tree prediction |
| Honours | Masterclass | Academic data for classification |
| Foods / Returns / Speed / UsedFord | Masterclass | Datasets for linear regression masterclass |
| Turtle Reviews (turtle_reviews.csv) | Assignment | Customer review data with loyalty, spending, and demographics |

---

## Masterclasses

### Masterclass in Linear Regression
- Practical regression analysis across four datasets (Foods, Returns, Speed, UsedFord)
- Model fitting, coefficient interpretation, and prediction
- 4 Jupyter notebooks with hands-on exercises

### Masterclass in Logistic Regression and Decision Trees
- Email classification using logistic regression and decision trees
- Healthcare stroke prediction with decision tree models
- Honours classification exercise
- 6 Jupyter notebooks with practical applications

---

## Assignment: Predictive Analytics for Turtle Games

**Objective:** Analyse customer review data from Turtle Games to explore correlations between income, spending, and loyalty points, perform customer segmentation, and build predictive models for loyalty point estimation.

**Deliverables:**
- **Python Notebook:** `Wagaba_Emmanuel_DA301_Assignment_Notebook.ipynb` (5.3 MB) -- comprehensive EDA, visualisation, and modelling
- **R Script:** `Wagaba_Emmanuel_DA301_Assignment_Notebook.R` -- alternative statistical analysis in R
- **Technical Report:** Final report (1.95 MB .docx) with findings and recommendations
- **Presentation:** PowerPoint (2 versions) with video recording (70 MB)
- **Visualisations:** Animated plots, correlation matrices, cluster diagrams, pair plots, loyalty points distribution

**Dataset:** `turtle_reviews.csv`
- Customer data with fields: Gender, Age, Remuneration (k), Spending Score (1-100), Loyalty Points, Education (Diploma/Graduate/Postgraduate/PhD), Product code

**Analytical Techniques Applied:**
- Exploratory data analysis and data cleaning
- Correlation analysis (income, spending, loyalty relationships)
- Histogram and density plot analysis for distributions
- Customer segmentation by education level and gender
- K-means clustering for behavioural grouping
- Linear and non-linear regression for loyalty point prediction
- Descriptive statistics (mean, median, standard deviation)

**File Location:** `LSE_Course_3_assignment_files/`

---

## File Inventory

| Type | Count |
|------|-------|
| Jupyter Notebooks (.ipynb) | 61+ |
| R Scripts (.R) | 34+ |
| CSV Datasets | 25+ |
| spaCy NLP Project | 1 (with virtual environment) |
| Masterclass Materials | 10 notebooks + PDFs |
| Video Recordings | 5+ |
| PDF/DOCX/PPTX Documentation | 8+ |

---

## Reflections

<!--
Fill in your personal reflections below:
- Which machine learning technique did you find most intuitive, and which was most challenging?
- How did working in both Python and R compare? Do you prefer one over the other?
- What surprised you about NLP and sentiment analysis?
- How would you apply these techniques in a real business scenario?
-->

*To be completed.*

---

## Recommendations

- **Deep Learning:** Extend into neural networks with TensorFlow or PyTorch for more complex prediction tasks
- **Feature Engineering:** Deepen skills in feature selection and engineering -- this is often more impactful than model choice
- **MLOps:** Explore model deployment with Flask/FastAPI, Docker, or cloud ML services (AWS SageMaker, GCP Vertex AI)
- **Advanced NLP:** Build on the spaCy foundation with transformer models (Hugging Face) for more sophisticated text analysis
- **Portfolio Projects:** Publish the Turtle Games analysis on GitHub with a clean README demonstrating the full ML pipeline
