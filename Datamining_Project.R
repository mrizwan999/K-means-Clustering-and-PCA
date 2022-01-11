# installing Packages 
install.packages("cluster")

# Loading Packages
library(cluster)

# Install pre-requisite packages 
install.packages("stats")

# Load required libraries
library(stats)

View(ecoli)

ecoli.data = ecoli
ecoli.data$V1 <- NULL
ecoli.data$V9 <- NULL

View(ecoli.data)

result <- kmeans(ecoli.data , 3)

result

result$size

result$cluster

table(ecoli$V9 , result$cluster)


plot(ecoli[c("V2" , "V3")] , col = result$cluster)

plot(ecoli[c("V2" , "V4")] , col = result$cluster)

plot(ecoli[c("V4" , "V5")] , col = result$cluster)

plot(ecoli[c("V2" , "V5")] , col = result$cluster)

plot(ecoli[c("V6" , "V5")] , col = result$cluster)

plot(ecoli[c("V6" , "V7")] , col = result$cluster)

plot(ecoli[c("V7" , "V8")] , col = result$cluster)

plot(ecoli[c("V6" , "V8")] , col = result$cluster)

plot(ecoli[c("V4" , "V8")] , col = result$cluster)


head(ecoli)

summary(ecoli)



# Check PCA eligibility 
cor(ecoli.data)

mean(cor(ecoli.data))

# Principle Component Analysis 
PCA = princomp(ecoli.data)

# PC Loading
PCA$loadings

# Principle component 
PC = PCA$scores
View(PC)
cor(PC)
summary(PCA)

loadings(PCA)

# Screen plot of eigenvalues
plot(PCA)
screeplot(PCA, type = "line", main = "Screen Plot")

# Bi plot of score variables
biplot(PCA)

# Scores of the component 
PCA$scores[1:10,]
