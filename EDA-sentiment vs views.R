# =========================================================
# EDA: sentiment vs views
# =========================================================
ggplot(final_data, aes(x = sentiment_type, y = Views)) +
  geom_boxplot(fill = "orange") +
  scale_y_log10(labels = scales::comma) +
  labs(
    title = "YouTube Views by Title Sentiment",
    x = "Sentiment Type",
    y = "Log(Views)"
  )