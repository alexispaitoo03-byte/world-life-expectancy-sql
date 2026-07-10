# world-life-expectancy-sql
Data cleaning and exploratory data analysis of global life expectancy data in SQL
World Life Expectancy — SQL Data Cleaning & Exploratory Data Analysis
End-to-end SQL project: cleaning and analyzing global life expectancy data covering 190+ countries over 15 years (2007–2022) using MySQL.


File Description

world_life_expectancy_data_cleaning.sql :

Duplicate removal, missing-value imputation, data quality fixes

world_life_expectancy_eda.sql :

Exploratory analysis: trends, GDP, development status, mortality

Part 1: Data Cleaning

Duplicate removal — Identified duplicate Country-Year records using ROW_NUMBER() window functions over a composite key, then removed them while preserving the first occurrence
Missing status imputation — Filled blank Developed/Developing status values using self-joins, borrowing the known status from other rows of the same country
Missing life expectancy imputation — Estimated missing values by interpolating between the prior and following year using a double self-join, preserving each country's trend line

Part 2: Exploratory Data Analysis

Questions explored:

Which countries gained the most life expectancy over 15 years?
How has global average life expectancy trended year over year?
How does GDP relate to life expectancy across countries?
Do high-GDP countries (≥1500) live measurably longer than low-GDP countries?
How do Developed vs. Developing nations compare — and how many countries sit in each group?
What is the relationship between BMI and life expectancy?
How does adult mortality accumulate over time (rolling totals, U.S. focus)?

Key Findings
High-GDP countries average roughly a decade more of life expectancy than low-GDP countries — one of the starkest divides in the dataset
Global average life expectancy rose steadily across the 15-year window
Developing nations make up the large majority of countries in the dataset, and their average life expectancy trails Developed nations significantly

Skills Demonstrated
ROW_NUMBER() · window functions · PARTITION BY · self-joins · multi-table joins · conditional aggregation with CASE · GROUP BY / HAVING · data imputation · rolling totals · data quality auditing

Credit
Project structure follows Alex the Analyst's SQL analytics series. Query implementations and analysis are my own.

