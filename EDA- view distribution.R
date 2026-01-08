# =========================================================
# EDA: view distribution
# =========================================================
ggplot(data, aes(x = Views)) +
  geom_histogram(bins = 50, fill = "steelblue", color = "black") +
  scale_x_log10(labels = scales::comma) +
  labs(
    title = "Distribution of YouTube Video Views (Log Scale)",
    x = "Log(Views)",
    y = "Frequency"
  )