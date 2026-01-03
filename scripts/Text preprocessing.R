# =========================================================
# Text preprocessing
# =========================================================
data$Title <- tolower(data$Title)
data$Title <- removePunctuation(data$Title)
data$Title <- removeWords(data$Title, stopwords("english"))
data$Title <- stripWhitespace(data$Title)

head(data)