# Predicting User Churn & Engagement: A Digital Health Product Analysis
**A Behavioral Analytics Project in SAS 9.4**

## 🚀 Project Overview
This project focuses on identifying the behavioral drivers of user retention for a digital health platform. By analyzing 30 days of simulated user-day engagement data, I built a predictive model to determine which actions (like onboarding and frequency of use) most effectively prevent churn.

The goal is to provide actionable insights for Product and Growth teams to improve user Lifetime Value (LTV).

## 📊 Key Findings
* **The Onboarding "Aha!" Moment:** Completing onboarding reduces churn odds by **95.3%** ($OR = 0.047$, $p = 0.0002$).
* **Habitual Engagement:** Each additional session reduces the risk of churn by **12%** ($OR = 0.880$, $p < 0.0001$).
* **Demographic Neutrality:** Age groups and subscription plans (Free vs. Premium) were **not** significant predictors of churn, suggesting the product's value is driven by behavior rather than user type.

## 🛠️ Methodology & Technical Stack
* **Simulation:** Developed a longitudinal dataset (9,000 rows) using nested loops and latent loyalty scores to mimic realistic user decay.
* **Feature Engineering:** Aggregated daily transactional data into an Analytical Base Table (ABT) using `PROC SQL`.
* **Predictive Modeling:** Utilized `PROC LOGISTIC` for binary classification.
* **Validation:** Assessed model performance using ROC Curves and Concordance Statistics.

### Model Performance
The final model achieved a **Concordance (c-statistic) of 0.981**, indicating excellent discriminative power.



## 📈 Visualizing the Impact

### 1. The Onboarding Gap
Users who skip onboarding have a near-certain churn rate, whereas completing the initial setup provides a significant "safety net" for retention.



### 2. Engagement Distribution
Retained users consistently averaged **74 sessions** per month, while those who churned typically dropped off after only **16 sessions** (usually within the first 10 days).

## 💡 Business Recommendations
1.  **Automated Interventions:** Implement a "High-Risk" trigger for any user who hasn't completed onboarding by Day 2.
2.  **Retention Loops:** Focus marketing spend on driving session frequency in the first week rather than demographic-based targeting.
3.  **Product Refinement:** Audit the onboarding flow to ensure the "value proposition" is delivered as early as possible.

---
**Note:** This dataset was simulated in SAS 9.4 for independent research purposes to demonstrate proficiency in product analytics and predictive modeling.
