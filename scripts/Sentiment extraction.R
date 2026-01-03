# =========================================================
# Sentiment extraction
# =========================================================
sentiment_data <- data %>%
  select(Title, Views) %>%
  unnest_tokens(word, Title, drop = FALSE) %>%
  inner_join(get_sentiments("bing"), by = "word") %>%
  count(Title, sentiment) %>%
  pivot_wider(
    names_from = sentiment,
    values_from = n,
    values_fill = 0
  ) %>%
  mutate(sentiment_score = positive - negative)

head(sentiment_data)