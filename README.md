📊 YouTube Thumbnail Sentiment Analysis
Analyzing the Impact of Title Sentiment on Viewer Engagement
📌 Project Overview

This project explores whether the sentiment expressed in YouTube video titles influences viewer engagement, measured through video view counts. Using text mining and machine learning techniques in R, we analyze how emotional tone (positive, negative, or neutral) in titles correlates with engagement patterns.

The study demonstrates a complete end-to-end data analytics pipeline, starting from raw data cleaning and preprocessing to exploratory data analysis, feature engineering, predictive modeling, and business-oriented insights.

🎯 Problem Statement

  YouTube creators often rely on intuition when crafting video titles, without clear evidence of how emotional tone affects engagement.
  This project aims to answer:

  Does the sentiment of a YouTube video title have a measurable impact on the number of views it receives?

🎯 Objectives

  Perform sentiment analysis on YouTube video titles

  Analyze engagement patterns across sentiment categories

  Engineer sentiment-based and structural features

  Compare baseline and advanced regression models

  Translate analytical findings into practical content strategy insights

📂 Dataset Description

Source: Publicly available YouTube metadata dataset (Kaggle)

  Attributes Used:

    Title – Video title text

    Views – Total number of views

    Likes – Total number of likes

  Data Characteristics:

    Real-world, creator-generated content

    Presence of missing values and duplicates

    Highly skewed engagement metrics

🧹 Data Cleaning & Preprocessing

The following preprocessing steps were applied:

  Removed duplicate video titles

  Handled missing numeric values using median imputation

Normalized text by:

  Converting to lowercase

  Removing punctuation

  Removing stopwords

  Stripping extra whitespace

These steps ensured the dataset was consistent and suitable for analysis.

📊 Exploratory Data Analysis (EDA)

Key insights from EDA include:

  View counts are highly right-skewed, with a small number of viral videos dominating engagement

  Log transformation was applied to stabilize variance

  Emotionally expressive titles (positive or negative) tend to outperform neutral titles in median views

  Visualizations were created using ggplot2, including histograms and boxplots.

🧠 Feature Engineering

New variables were engineered from the raw title text:

  Sentiment Score: Difference between positive and negative word counts

  Sentiment Type: Categorized as Positive, Neutral, or Negative

  Log-Transformed Views: Used as the modeling target

These features convert unstructured text into meaningful numerical inputs for modeling.

🤖 Modeling Approach

Two regression models were evaluated:

  Generalized Linear Model (GLM):

    Used as a baseline to capture linear relationships

  Random Forest Regressor:

    Used to explore potential non-linear patterns

The target variable was log(Views) to reduce the impact of extreme outliers.

📈 Model Evaluation

Evaluation Metric: RMSE (Root Mean Squared Error)

  Models were evaluated on unseen test data

  Results showed comparable performance, with GLM marginally outperforming Random Forest

This indicates that the engineered features exhibit largely linear relationships with engagement.

💡 Key Insights & Business Implications

  Title sentiment has a measurable influence on viewer engagement

  Neutral titles consistently underperform compared to emotional titles

  Engagement patterns are predictable and can be optimized

  Data-driven title design can improve clicks without altering content quality

  A conceptual flow visualization was used to summarize the insight:

Title Design → Viewer Attention → Higher Clicks → More Views

👥 Team Contribution
Member	Role	Contribution
Member 1	Data Architect	Library loading, data ingestion
Member 2	Data Architect	Data cleaning and text preprocessing
Member 3	EDA Analyst	Exploratory analysis and visualization
Member 4	Feature Engineer	Sentiment extraction and feature creation
Member 5	Modeler & Insights Lead	Modeling, evaluation, and business insights

🛠️ Tools & Technologies Used

  R / RStudio

  dplyr, tidyr – Data manipulation

  tidytext – Sentiment analysis

  tm, stringr – Text preprocessing

  ggplot2 – Data visualization

  randomForest – Machine learning

📌 Conclusion

This project demonstrates how text mining and statistical modeling can be applied to real-world digital content to extract actionable insights. By combining sentiment analysis with regression modeling, we show that emotional tone in titles plays a meaningful role in driving engagement.

presentation.pdf / pptx – Final presentation

📬 Contact

For academic or learning purposes only.
This project was developed as part of a data analytics coursework assignment.
