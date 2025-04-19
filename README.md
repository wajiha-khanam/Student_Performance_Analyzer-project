# Student_Performance_Analyzer-project

# 🎓 Student_Performance_Analyzer
This project is a comprehensive analysis of student performance using **Python**, **SQL**, and **Statistics**. It combines data extraction, data analysis, and statistical interpretation to derive insights from a dataset of student records.

---

## 🧰 Tech Stack

- **Python** (Pandas, Matplotlib, Seaborn)
- **SQL** (MySQL)
- **Statistics** (Descriptive stats, Hypothesis testing)

---

## 🔍 Objectives

- Load and inspect a raw dataset from Kaggle.
- Clean and preprocess the data using Pandas.
- Perform EDA to identify patterns in student performance.
- Extract insights using SQL queries on the cleaned data.
- Use statistical methods to validate hypotheses and interpret relationships.

---

## 📊 Key Features

- ✅ **Data Cleaning** (in `Student_Performance_Analyzer.ipynb`):
  - Renamed columns for clarity
  - Cleaned and standardized text data
  - Checked for and confirmed absence of missing/duplicate values

- 📊 **EDA & Visualization** (in `Student_Performance_Analyzer.ipynb`):
  - Displayed dataset structure and summary statistics
  - Visualized distributions of math, reading, and writing scores using histograms
  - Plotted average scores by gender using bar plots
  - Used Matplotlib and Seaborn for data visualization

- 🧠 **Statistical Analysis** (in `statistics.ipynb`):
  - Performed **Pearson correlation analysis** to examine relationships between reading and writing scores
  - Conducted **independent t-tests** to compare average scores between male and female students
  - Used `scipy.stats` and `pandas` for statistical computations and group comparisons

- 🗂️ **SQL Queries** (in `project_sql.sql`):
  - Retrieved top scoring students in each subject
  - Calculated average scores by gender 
  - Filtered students based on test preparation 
  - Used GROUP BY, ORDER BY, and aggregate functions for insights

---

## 🗃️ Datasets

- **Raw Data**:  
  `StudentsPerformance.csv` — sourced from [Kaggle](https://www.kaggle.com/datasets/spscientist/students-performance-in-exams)

- **Cleaned Data**:  
  `Cleaned_students_performance.xlsx` — processed using Python (Pandas) for consistency and clarity.

---

## 👥 Collaborators

- [@sanishapm](https://github.com/sanishapm) 
