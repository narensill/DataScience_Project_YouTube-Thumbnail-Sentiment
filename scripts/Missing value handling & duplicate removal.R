# =========================================================
# Missing value handling & duplicate removal
# =========================================================
colSums(is.na(data))

data <- data[!duplicated(data$Title), ]

data$Views[is.na(data$Views)] <- median(data$Views, na.rm = TRUE)
data$Likes[is.na(data$Likes)] <- median(data$Likes, na.rm = TRUE)

colSums(is.na(data))