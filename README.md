🛒 Amazon Customer Behavior Analysis (SQL Project)
This project explores customer behavior patterns on an e-commerce platform (modeled after Amazon) using SQL. It focuses on uncovering actionable insights from user interaction data to improve business outcomes such as revenue, customer satisfaction, and retention.

📂 Project Overview
This analysis uses a synthetic database Amazon_Customer containing customer activity, preferences, and feedback. Key areas include:

Cart abandonment
Product category performance
Effectiveness of recommendations
Customer review behavior
Pain points and suggestions
User segmentation for marketing

🧰 Tools Used
MySQL
SQL queries for data analysis

🗂️ Database Schema
Table: Customer_Behaviour

| Column Name                                 | Type          | Description                         |
| ------------------------------------------- | ------------- | ----------------------------------- |
| `Timestamp`                                 | `datetime`    | Record timestamp                    |
| `age`                                       | `INT`         | Customer age                        |
| `Gender`                                    | `VARCHAR(17)` | Gender identity                     |
| `Purchase_Frequency`                        | `VARCHAR(22)` | How often the customer purchases    |
| `Purchase_Categories`                       | `VARCHAR(96)` | Product categories bought           |
| `Personalized_Recommendation_Frequency`     | `VARCHAR(9)`  | How often recommendations are shown |
| `Browsing_Frequency`                        | `VARCHAR(20)` | Frequency of site browsing          |
| `Product_Search_Method`                     | `VARCHAR(20)` | How products are searched           |
| `Search_Result_Exploration`                 | `VARCHAR(30)` | Depth of exploration                |
| `Customer_Reviews_Importance`               | `INT`         | Importance of reviews (scale)       |
| `Add_to_Cart_Browsing`                      | `VARCHAR(5)`  | Do they add while browsing?         |
| `Cart_Completion_Frequency`                 | `VARCHAR(20)` | How often they complete the cart    |
| `Cart_Abandonment_Factors`                  | `VARCHAR(64)` | Reasons for abandoning              |
| `Saveforlater_Frequency`                    | `VARCHAR(9)`  | Save for later frequency            |
| `Review_Left`                               | `VARCHAR(3)`  | Whether a review was left           |
| `Review_Reliability`                        | `VARCHAR(20)` | Perceived reliability of reviews    |
| `Review_Helpfulness`                        | `VARCHAR(9)`  | Helpfulness rating                  |
| `Personalized_Recommendation_Frequency_num` | `INT`         | Numerical version of frequency      |
| `Recommendation_Helpfulness`                | `VARCHAR(9)`  | How helpful the recommendation was  |
| `Rating_Accuracy`                           | `INT`         | Accuracy of rating vs experience    |
| `Shopping_Satisfaction`                     | `INT`         | Overall satisfaction                |
| `Service_Appreciation`                      | `VARCHAR(64)` | What service was appreciated        |
| `Improvement_Areas`                         | `VARCHAR(96)` | Suggested improvements              |


🚀 How to Use This Project

1) Run SQL script in a MySQL environment to create the database and table.
2) Populate with sample or actual data.
3) Execute queries to generate insights.

📌 Notes

This project assumes clean, well-labeled data.
Add visualization tools (e.g., Power BI, Tableau) for richer presentation.
Extendable for predictive modeling in future versions.

