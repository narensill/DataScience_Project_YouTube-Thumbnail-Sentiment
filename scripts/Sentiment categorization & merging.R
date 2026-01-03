# =========================================================
# Sentiment categorization & merging
# =========================================================
sentiment_data <- sentiment_data %>%
  mutate(sentiment_type = case_when(
    sentiment_score > 0 ~ "Positive",
    sentiment_score < 0 ~ "Negative",
    TRUE ~ "Neutral"
  ))

final_data <- left_join(sentiment_data, data, by = "Title")
head(final_data)