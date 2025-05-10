CREATE DATABASE Amazon_Customer;
USE Amazon_Customer;
CREATE TABLE Customer_Behaviour(
Timestamp datetime,
age INT,
Gender VARCHAR(17),
Purchase_Frequency VARCHAR(22),	
Purchase_Categories VARCHAR(96), 	
Personalized_Recommendation_Frequency VARCHAR(9) not null,	
Browsing_Frequency VARCHAR(20),
Product_Search_Method	VARCHAR(20),
Search_Result_Exploration VARCHAR(30),	
Customer_Reviews_Importance	INT,
Add_to_Cart_Browsing	VARCHAR(5),
Cart_Completion_Frequency VARCHAR(20),	
Cart_Abandonment_Factors VARCHAR(64),	
Saveforlater_Frequency	VARCHAR(9),
Review_Left VARCHAR(3),	
Review_Reliability	VARCHAR(20),
Review_Helpfulness	VARCHAR(9),
Personalized_Recommendation_Frequency_num INT,
Recommendation_Helpfulness	VARCHAR(9),
Rating_Accuracy INT,	
Shopping_Satisfaction INT,	
Service_Appreciation VARCHAR(64),	
Improvement_Areas VARCHAR(96)
);

use amazon_customer;
select * from customer_behaviour;
SELECT COUNT(*) FROM customer_behaviour;

#---- Top 6 business problems -------


#----(1) Why are customers abandoning their carts?
#---- Cart abandonment directly impacts revenue.
SELECT Cart_Abandonment_Factors, COUNT(*) AS num_customers
FROM Customer_Behaviour
WHERE Cart_Completion_Frequency = 'Rarely' OR Cart_Completion_Frequency = 'Sometimes'
GROUP BY Cart_Abandonment_Factors
ORDER BY num_customers DESC;
#---- Insight: Identify the most common reasons (e.g. high prices, delivery times) and take action



 #----(2) Which product categories have the highest shopping satisfaction?
#----- Focus investment on high-performing categories.
SELECT Purchase_Categories, AVG(Shopping_Satisfaction) AS avg_satisfaction, COUNT(*) AS num_reviews
FROM Customer_Behaviour
GROUP BY Purchase_Categories
HAVING COUNT(*) > 10
ORDER BY avg_satisfaction DESC;
#----- Insight: Improve underperforming categories or promote high-scoring ones.



#----- (3) Do personalized recommendations actually help?
#----- Understand if recommendation systems are effective.
SELECT Personalized_Recommendation_Frequencies, 
AVG(Shopping_Satisfaction) AS avg_satisfaction, 
AVG(Rating_Accuracy) AS avg_rating_accuracy
FROM Customer_Behaviour
GROUP BY Personalized_Recommendation_Frequencies;
#----- Insight: If people who receive frequent recommendations are more satisfied, continue investing in personalization.



#----- (4) What factors influence positive reviews?
#----- Improve features that drive strong reviews.
SELECT Review_Helpfulness, Review_Reliability, 
  AVG(Shopping_Satisfaction) AS avg_satisfaction
FROM Customer_Behaviour
WHERE Review_Left = 'Yes'
GROUP BY Review_Helpfulness, Review_Reliability;
#----- Insight: Learn what kind of reviews customers find most useful and reliable.



#---- (5) What are top customer pain points?
#---- Fix what customers say needs improvement.
SELECT Improvement_Areas, COUNT(*) AS mentions
FROM Customer_Behaviour
GROUP BY Improvement_Areas
ORDER BY mentions DESC
LIMIT 5;
#---- Insight: Reduce packaging waste? Improve delivery? You’ll see the themes.



#---- (6) How often do different customer types shop?
#---- Segment users for targeted marketing.
SELECT Gender, age, Purchase_Frequency, COUNT(*) AS count
FROM Customer_Behaviour
GROUP BY Gender, age, Purchase_Frequency
ORDER BY count DESC;
#---- Insight: Tailor promotions by gender/age segments based on activity level.