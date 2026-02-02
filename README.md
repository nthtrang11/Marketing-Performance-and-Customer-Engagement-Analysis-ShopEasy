# 📊 Marketing Performance & Customer Engagement Analysis – ShopEasy

## 1. Project Overview
Link dashboard: https://app.powerbi.com/reportEmbed?reportId=9e7f1f2f-91e2-475c-9c0c-ca0d93435892&autoAuth=true&ctid=2a141a9b-4ef4-4094-a1e5-59bf690777c6

This project analyzes marketing performance and customer engagement for **ShopEasy**, an online retail business.
The dashboard focuses on conversion behavior, content engagement, and customer feedback to help stakeholders evaluate marketing effectiveness and identify optimization opportunities.

The project is built end-to-end, from business problem definition and data cleaning to dashboard development and insight-driven recommendations using **SQL, Python, and Power BI**.

---

## 2. Business Objective

### The primary goal of this project is to enable marketing stakeholders to:

- Monitor conversion rates across products and time
- Evaluate customer engagement with marketing content
- Understand customer sentiment and feedback patterns
- Identify drop-off points in the customer journey
- Support data-driven marketing optimization decisions

### Scope

**In scope**
- Online marketing campaigns
- Customer journey and engagement data
- Product performance and customer feedback

**Out of scope**
- Offline sales channels
- Inventory and supply chain analysis

---

## 3. Dataset & Domain Knowledge

The dataset simulates data from an e-commerce retail environment and includes multiple business domains:

- Customer information and demographics
- Product and campaign data
- Marketing engagement metrics (views, clicks, likes)
- Customer journey stages
- Customer reviews and ratings

### Key KPIs Supported

- Conversion Rate
- Customer Engagement (Views, Clicks, Likes)
- Customer Feedback Score
- Sentiment Distribution (Positive / Neutral / Negative)
- Drop-off Rate across funnel stages

The dataset supports analysis across:
- Products
- Time
- Content types
- Customer segments
- Conversion funnel stages

---

## 4. Data Model

The data is modeled using a **Star Schema** to support analytical queries and dashboard performance.

### Fact Tables
- **fact_customer_journey**: customer actions across funnel stages
- **fact_engagement_data**: views, clicks, likes by content type
- **fact_customer_reviews**: ratings and review text
- **fact_customer_reviews_with_sentiments**: ratings and review text with sentiments score

### Dimension Tables
- **dim_customers**: demographics and customer attributes
- **dim_products**: product information
- **Calendar (dim_date)**: time-based analysis (created in Power BI)

This model enables flexible slicing by:
- Time
- Product
- Customer
- Content type
- Funnel stage

---

## 5. Data Processing

- Data cleaning and transformation performed using **SQL Server**
- Removed duplicates and standardized text fields
- Handled missing values using business rules
- Sentiment analysis on customer reviews performed using **Python**
- Final analytical tables loaded into Power BI

---

## 6. Dashboard Design & Visualizations

The Power BI dashboard was built based on defined business requirements and KPIs.

### Key Visuals

- KPI Cards: Conversion Rate, Engagement, Average Rating
- Conversion Trend by Month
- Products by Conversion Rate
- Customer Journey Drop-off Analysis
- Content Performance by Type and Month
- Customer Sentiment Distribution
- Rating Distribution by Product

---

## 7. Key Insights

### Conversion Performance
- Conversion rates show strong seasonality, with peaks in early-year months.
- Certain products consistently outperform others in conversion efficiency.

### Customer Engagement
- Overall content views decline in the second half of the year.
- Blog and newsletter content generate the highest engagement.
- Clicks and likes remain relatively low compared to views, indicating optimization potential.

### Customer Feedback
- Average ratings remain stable around 3.7 but below the target of 4.0.
- Products with ratings below 3.5 show recurring negative themes in reviews.

---

## 8. Recommendations

- Focus marketing efforts on high-converting products during peak seasons
- Improve content strategy with stronger calls to action and interactive formats
- Address recurring negative feedback through product and service improvements
- Optimize lower funnel stages to reduce customer drop-off

---

## 9. Tools & Technologies

- **SQL Server** – data cleaning and transformation
- **Python (Pandas, NLTK)** – sentiment analysis
- **Power BI Desktop** – data modeling and visualization
- **Git & GitHub** – version control and documentation

---

## 10. Project Structure
- sql:
    - description: SQL scripts for data cleaning, transformation, and preparation
    - contents:
        - dim_customers.sql
        - dim_products.sql
        - fact_customer_journey.sql
        - fact_customer_reviews.sql
        - fact_engagement_data.sql

- python:
    - description: Python scripts for advanced analysis
    - contents:
        - sentiment_analysis.py
        - fact_customer_reviews_with_sentiment.csv

- dashboard:
    - description: Power BI dashboard files
    - contents:
        - MarketingPerformanceAndCustomerEngagementAnalysisDashboard.pbix

- report:
    - description: Final insight and recommendation reports
    - contents:
        - Marketing Performance and Customer Engagement Analysis _ ShopEasy.ppt

- docs:
    - description: Business Requirements Documentation
    - contents:
        - BUSINESS REQUIREMENTS DOCUMENT (BRD).pdf

- readme:
    - description: Project overview, methodology, insights, and structure
    - contents:
        - README.md


---

## 11. Business Value

This project helps marketing teams:
- Improve conversion funnel efficiency
- Better understand customer behavior and sentiment
- Optimize content and campaign strategies
- Support strategic decision-making with data-driven insights

---

## 12. Future Improvements

- Add cost-based metrics and ROI analysis
- Drill-through analysis by campaign and customer segment
- Automate data refresh pipeline
- Enhance sentiment analysis with topic modeling

