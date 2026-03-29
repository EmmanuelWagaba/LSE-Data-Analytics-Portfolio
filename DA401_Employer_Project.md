# DA401: Employer Project

**LSE Data Analytics Career Accelerator -- Cohort 3 (2024-2025)**
**Team 11 -- Study Group Project**
**Student:** Emmanuel Wagaba

---

## Overview

The Employer Project is the capstone course of the LSE Data Analytics Career Accelerator, applying all skills from the programme to a real-world business scenario. Working as part of Team 11, the project analysed Singapore student data provided by Study Group to deliver actionable insights through exploratory analysis, predictive modelling, and interactive dashboards. The project followed a structured lifecycle from scoping through to final presentation and technical report delivery.

---

## Project Brief

Study Group provided a dataset of student records from their Singapore operations. The team was tasked with analysing the data to uncover patterns, build predictive models, and deliver recommendations to support business decision-making around student outcomes and engagement.

---

## Team and Collaboration

- **Team:** Team 11 (LSE Accelerator Employer Project)
- **Governance:** Team Charter (V05.1) defining roles, responsibilities, and ways of working
- **Project Management:** Project Roadmap (Excel) with timeline and milestones
- **Collaboration:** Brainstorming sessions, regular meetings, and iterative feedback cycles
- **Presentations:** Initial recommendation pitch and final presentation with video recordings

---

## Analytical Approach

### Exploratory Data Analysis (EDA)
- Comprehensive data profiling and quality assessment
- Demographic breakdowns and customer segment profiling
- Multi-dimensional discount analysis by student characteristics

### Data Cleaning and Preparation
- Dataset cleaning and transformation (raw .xlsx to cleaned versions)
- Feature engineering and selection for modelling

### Modelling Techniques Applied

| Technique | Purpose | Implementation |
|-----------|---------|----------------|
| **Decision Tree Classification** | Categorising student outcomes | Pruning and hyperparameter tuning |
| **K-means Clustering** | Identifying student segments | Cluster analysis and interpretation |
| **Logistic Regression** | Binary classification of student outcomes | Multiple iterations (7+ versions including refined and Copilot-assisted) |
| **Random Forest Classifier** | Ensemble prediction with feature importance | Feature importance visualisation, individual tree analysis, ROC curve analysis |
| **Time Series Analysis** | Temporal patterns in student data | Trend and seasonality decomposition |
| **Predictive/Correlation Analysis** | Relationship mapping between features | Feature correlation and dependency analysis |

---

## Tools and Technologies

- **Python 3** -- primary analysis language (18+ Jupyter notebooks)
- **scikit-learn** -- Decision Trees, Logistic Regression, Random Forest, K-means
- **Pandas, NumPy** -- data manipulation and numerical computation
- **Matplotlib, Seaborn** -- data visualisation and model evaluation plots
- **Tableau** -- interactive dashboard (14.8 MB .twbx file)
- **Microsoft Word** -- technical report
- **Microsoft PowerPoint** -- presentation slides
- **Microsoft Excel** -- project roadmap and data exploration

---

## Datasets

| File | Size | Description |
|------|------|-------------|
| sg_studentdata_.xlsx | 9.1 MB | Raw student data from Study Group |
| sg_studentdata_cleaned.xlsx | 7.5 MB | Cleaned and processed version |
| sg_studentdata_unlocked.csv | 13.7 MB | CSV format for analysis |
| Book1.csv | 13.1 MB | Supplementary data |
| Glossary.xlsx | -- | Data dictionary and field definitions |

---

## Deliverables

| Deliverable | File | Status |
|-------------|------|--------|
| Project Scope and Plan | Assignment 1 (docx + PDF) | Submitted |
| Team Charter | Team Charter V05.1 (docx) | Submitted |
| Final Technical Report | Study Group Team 11 Technical Report (docx, 1.5 MB) | Submitted |
| Final Presentation Slides | Team 11 Final PPT (pptx, 3.8 MB) + PDF (2.4 MB) | Submitted |
| Presentation Recording | Final presentation (mp4, 345 MB) | Submitted |
| Tableau Dashboard | Team 11 LSE EP Assignment3 Tableau Dashboard (twbx, 14.8 MB) | Submitted |
| EDA Notebook | Exploratory & Discount by Dimension Analysis (1 MB) | Submitted |
| Logistic Regression Notebook | Logistic Regression analysis (766 KB) | Submitted |
| Random Forest Notebook | Random Forest Classifier analysis (1.66 MB) | Submitted |

**Additional Analytical Notebooks (Course 4 directory):**
- Study Group Analytical Process
- Study Group EDA
- Study Group Decision Tree Classification
- Study Group Logistic Regression (7 versions with iterative refinements)
- Study Group K-clustering
- Study Group Predictive Analysis
- Study Group Time Series Analysis

---

## Key Learnings

- End-to-end project lifecycle: scoping, planning, analysis, reporting, and presenting
- Iterative model refinement (evidenced by 7+ logistic regression versions)
- Team collaboration in a data science context (charter, roles, review cycles)
- Building and deploying interactive Tableau dashboards for stakeholder consumption
- Combining multiple modelling approaches to validate findings
- Feature importance analysis and ROC curve interpretation
- Communicating technical findings to non-technical business stakeholders
- Time management and milestone-based project delivery

---

## Key Outputs

- **Feature Importance Visualisations** -- identifying the most predictive variables
- **ROC Curves** -- evaluating classifier performance
- **Interactive Tableau Dashboard** -- enabling stakeholders to explore the data
- **Technical Report** -- comprehensive documentation of methodology and findings
- **Presentation** -- pitched recommendations to Study Group stakeholders

---

## File Locations

| Content | Directory |
|---------|-----------|
| Individual analysis notebooks | `Course 4/` |
| Team deliverables (submitted) | `LSE Accelerator Employer Project - Team 11 - Study Group Project/0_Deliverables/` |
| Datasets | `LSE Accelerator Employer Project - Team 11 - Study Group Project/1_Datasets/` |
| Team notebooks and Tableau | `LSE Accelerator Employer Project - Team 11 - Study Group Project/2_Notebooks, Tableau, R files/` |

---

## Reflections

<!--
Fill in your personal reflections below:
- What was the most rewarding part of working on a real employer project?
- How did the team dynamics affect the analytical process?
- Which modelling technique proved most valuable for this specific business problem?
- What would you do differently in a future team data science project?
- How did presenting to stakeholders compare to your expectations?
-->

*To be completed.*

---

## Recommendations

- **Portfolio Centrepiece:** This employer project is the strongest portfolio piece -- create a polished GitHub repository with a clear README, sample visualisations, and key findings
- **Streamlit/Dash App:** Convert the Tableau dashboard into a Python-based web app (Streamlit or Dash) to demonstrate full-stack data science capability
- **Case Study Write-up:** Write a concise case study (blog post or portfolio page) walking through the business problem, approach, and impact
- **Model Documentation:** Add model cards or documentation summarising each model's performance metrics, assumptions, and limitations
