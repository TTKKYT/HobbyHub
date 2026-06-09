# HobbyHub — User Analytics Project

A solo data analytics expansion of a senior-focused hobby matchmaking app, originally designed in a UMich group project. This version builds the full data layer: database schema, synthetic user data, a content-based recommendation algorithm, K-means user segmentation, and a Tableau dashboard.

**Live Dashboard:** https://public.tableau.com/app/profile/yi.ting.kao/viz/Book1_17810338695000/Dashboard1

---

## What I Built

| Component | Description |
|---|---|
| MySQL Schema | Relational database with users, hobbies, communities, survey responses, and engagement tables |
| Synthetic Data | 50 senior user profiles with realistic demographic and preference attributes |
| Recommendation Algorithm | Content-based filtering that matches users to hobbies based on physical ability, preferences, and availability |
| User Segmentation | K-means clustering (k=4) using the elbow method to identify distinct user groups |
| Tableau Dashboard | Product analytics dashboard with KPIs, segment profiles, hobby popularity, and engagement metrics |

---

## Key Findings

- **4 distinct user segments** emerged from clustering: Active Independents, High Engagers, Social Homebodies, and Weekend Explorers
- **Social hobbies dominate** -- 39% of all recommendations, nearly double the next category (creative at 20%)
- **Age doesn't predict engagement** -- High Engagers (avg age 80) have the most available hours per week, more than users 15 years younger
- **Active Independents** (avg age 65) are the youngest segment and strongly prefer outdoor, solo activities

---

## Tech Stack

- **Python 3.13** (pandas, numpy, scikit-learn, matplotlib, seaborn, sqlalchemy)
- **MySQL** with mysql-connector-python
- **Jupyter Notebooks**
- **Tableau Public**

---

## Project Structure

```
HobbyHub/
├── sql/
│   └── schema.sql                         # Database schema
├── notebooks/
│   ├── 01_generate_data.ipynb             # Synthetic data generation
│   ├── 02_recommendation_algorithm.ipynb  # Content-based filtering
│   └── 03_user_segmentation.ipynb         # K-means clustering + elbow method
├── data/
│   ├── user_segments.csv                  # Users with cluster assignments
│   ├── recommendations.csv                # Top 5 hobby recommendations per user
│   ├── elbow_plot.png                     # Elbow method visualization
│   └── user_segments.png                  # Cluster scatter plot
```

---

## Segmentation Results

| Segment | Avg Age | Avg Hours/Week | Key Traits |
|---|---|---|---|
| Active Independents | 64.8 | 12.1 | Outdoor, solo, high energy |
| High Engagers | 80.5 | 13.4 | Social, high availability |
| Social Homebodies | 81.8 | 7.2 | Social, low physical activity |
| Weekend Explorers | 72.0 | 5.0 | Mixed, time-constrained |
