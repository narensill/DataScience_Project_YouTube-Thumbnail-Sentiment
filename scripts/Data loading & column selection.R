# ================================
# Load dataset and select required columns
# ================================
data <- read.csv("videos-stats.csv", stringsAsFactors = FALSE)
data <- data[, c("Title", "Views", "Likes")]