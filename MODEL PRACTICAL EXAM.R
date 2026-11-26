
x <- c(35, 50, 45, 60, 55)

minmax <- (x - min(x)) / (max(x) - min(x))

zscore <- (x - mean(x)) / sd(x)

mad_value <- mean(abs(x - mean(x)))
mad_norm <- (x - mean(x)) / mad_value

decimal <- x / 100

cat("Min-Max Normalization:\n")
print(round(minmax, 3))

cat("Z-Score Normalization:\n")
print(round(zscore, 3))

cat("MAD Normalization:\n")
print(round(mad_norm, 3))

cat("Decimal Scaling:\n")
print(decimal)



data <- c(42, 38, 45, 50, 47, 40, 44, 46,
          48, 52, 55, 53, 49, 51, 54, 56, 58)

sorted_data <- sort(data)

cat("Equal Frequency Binning:\n")
bins <- split(sorted_data, rep(1:3, each=6))
print(bins)

cat("Equal Width Binning:\n")
width_bins <- cut(data, breaks=3)
print(table(width_bins))

cat("Clustering Based Partitioning:\n")
set.seed(123)
model <- kmeans(data, centers=3)
print(model$cluster)
print(model$centers)

par(mfrow=c(1,3))

hist(data, main="Equal Frequency",
     xlab="Visitors")

hist(data, breaks=3, main="Equal Width",
     xlab="Visitors")

hist(data, main="Clustering",
     xlab="Visitors")





@relation Loan_Approval

@attribute Income_Level {Low,Medium,High}
@attribute Credit_Score {Poor,Fair,Excellent}
@attribute Collateral {No,Yes}
@attribute Approved {No,Yes}

@data
Low,Poor,No,No
Medium,Fair,Yes,Yes
High,Excellent,No,Yes
Medium,Poor,Yes,No
Low,Fair,Yes,No
High,Excellent,Yes,Yes
Medium,Excellent,No,Yes
Low,Poor,Yes,No
High,Fair,Yes,Yes
Medium,Excellent,Yes,Yes



Dataset: Diabetes.arff

Classifier 1:
  trees -> J48

Classifier 2:
  functions -> SMO

Test Options:
  10-fold Cross Validation

Class Attribute:
  Diabetes Outcome

Evaluation:
  Accuracy
Precision
Recall
F1-Score
Execution Time
