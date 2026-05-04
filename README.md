# NYC_Airbnb_Data_Analysis

# Overview of the project

This project presents an end-to-end data analysis of the NYC Airbnb dataset to uncover insights related to pricing, demand, availability, and location trends. The analysis follows a real-world data workflow starting from raw data cleaning in Python, performing analytical queries in SQL, and finally building an interactive dashboard in Power BI.

# Observations
- Identify peak booking periods
- Analyze pricing trends across seasons
- Understand location-based demand
- Evaluate room type performance
- Explore review and availability patterns

# Tools & Technologies
Python (Pandas, NumPy) — Data cleaning and preprocessing
SQL — Data analysis and business queries
Power BI — Dashboard and data visualization

# Workflow
- Cleaned and prepared the raw dataset using Python
- Structured and exported cleaned data for analysis
- Performed SQL-based analysis to extract business insights
- Built an interactive Power BI dashboard for visualization
# Dashboard Highlights
🔹 Key Metrics
- Average Price: 127.51
- Peak Month: June (6)
- Total Listings: 379
- Total Reviews: 12K
🔹 Key Visual Insights

# Review Trend by Month
Reviews peak sharply in June, indicating strong seasonal demand.

# Location Demand 
Listings are concentrated in high-demand areas, especially major NYC boroughs.

| neighbourhood_group | neighbourhood     | AvgPrice |
| ------------------- | ----------------- | -------- |
| Staten Island       | Fort Wadsworth    | 800      |
| Staten Island       | Woodrow           | 700      |
| Manhattan           | Tribeca           | 490.64   |
| Brooklyn            | Sea Gate          | 487.86   |
| Bronx               | Riverdale         | 442.09   |
| Staten Island       | Prince's Bay      | 409.5    |
| Manhattan           | Battery Park City | 367.56   |
| Manhattan           | Flatiron District | 341.93   |
| Staten Island       | Randall Manor     | 336      |
| Manhattan           | NoHo              | 295.72   |


# Average Price and Total Reviews by Season
- Pricing varies across seasons, with noticeable differences between summer and winter.
- Summer dominates in review count, confirming peak demand.

| seasons | AvgPrice | total_reviews |
| ------- | -------- | ------------- |
| Winter  | 155      | 5313          |
| Fall    | 144      | 4239          |
| Summer  | 141      | 21193         |
| Spring  | 138      | 8098          |


# Room Type Distribution
Entire home/apartment listings dominate demand.
| room_type       | total_room |
| --------------- | ---------- |
| Entire home/apt | 25409      |
| Private room    | 22326      |
| Shared room     | 1160       |



# Top Hosts by Listings
A small group of hosts manages multiple listings, indicating market concentration.

# Dashboard Preview

📊 Key Insights
Demand peaks during summer (especially June)
Manhattan and Brooklyn dominate listing activity
Entire homes/apartments have higher demand but limited availability
Pricing is influenced by seasonality and location
Review activity strongly correlates with peak seasons
Market shows signs of host concentration (power hosts)
💡 Recommendations
Implement dynamic pricing during peak and off-peak seasons
Increase listing availability during high-demand months
Focus investment on high-demand locations
Encourage diversification of hosts to balance market competition
Optimize listing types based on demand (entire homes preferred)
📂 Project Structure
01-data/ — Raw and cleaned datasets
02-notebooks/ — Data cleaning (Python)
03-sql/ — SQL analysis queries
04-dashboard/ — Power BI dashboard file
05-images/ — Dashboard preview image
insights.md — Detailed insights
README.md — Project documentation
🚀 Conclusion

The NYC Airbnb market is highly seasonal and location-driven, with peak demand occurring during summer months.
Data-driven strategies such as dynamic pricing and targeted investment can significantly improve performance in this market.
