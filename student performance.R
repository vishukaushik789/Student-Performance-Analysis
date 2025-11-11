# Load libraries
library(ggplot2)

# Load data
data <- read.csv("~/student_performance.csv")

# Summary statistics
summary(data)

# 1. Histogram - Math Score Distribution
ggplot(data, aes(x=Math_Score)) + 
  geom_histogram(bins=15, fill="skyblue", color="black") +
  labs(title="Math Score Distribution", x="Score", y="Frequency")


# 2. Bar Chart - Average Scores by Subject
scores <- colMeans(data[,c("Math_Score","Reading_Score","Writing_Score")])
barplot(scores, col=rainbow(3), main="Average Scores by Subject", ylab="Score")

# 3. Box Plot - Score Distributions
boxplot(data[,c("Math_Score","Reading_Score","Writing_Score")], 
        col=c("lightblue","lightgreen","lightyellow"),
        main="Score Distribution by Subject", ylab="Score")