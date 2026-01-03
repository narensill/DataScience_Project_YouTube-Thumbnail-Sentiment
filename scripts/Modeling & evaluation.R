# =========================================================
# Modeling & evaluation
# =========================================================
model_data <- final_data %>%
  select(Views, sentiment_score, sentiment_type) %>%
  mutate(
    log_views = log10(Views),
    sentiment_type = as.factor(sentiment_type)
  )

set.seed(123)
train_index <- sample(seq_len(nrow(model_data)), size = 0.8 * nrow(model_data))
train_data <- model_data[train_index, ]
test_data  <- model_data[-train_index, ]

glm_model <- glm(
  log_views ~ sentiment_score + sentiment_type,
  data = train_data
)
glm_pred <- predict(glm_model, test_data)

rf_model <- randomForest(
  log_views ~ sentiment_score + sentiment_type,
  data = train_data,
  ntree = 200
)
rf_pred <- predict(rf_model, test_data)

rmse <- function(actual, predicted) {
  sqrt(mean((actual - predicted)^2))
}

glm_rmse <- rmse(test_data$log_views, glm_pred)
rf_rmse  <- rmse(test_data$log_views, rf_pred)

rmse_table <- data.frame(
  Model = c("GLM", "Random Forest"),
  RMSE = c(glm_rmse, rf_rmse)
)

View(rmse_table)
