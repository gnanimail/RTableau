

# Load Train and Test data sets
bms.train <- read.csv("Practice Problem Big Mart Sales III/Train.csv", header = T, stringsAsFactors = T)

bms.test <- read.csv("Practice Problem Big Mart Sales III/Test.csv", header = T, stringsAsFactors = T)

# Append Train and Test data sets
bms.data <- rbind(bms.train[,-12], bms.test)

# Impute missing Item_Weight with its mean value
bms.data$Item_Weight[is.na(bms.data$Item_Weight)] <- mean(bms.data$Item_Weight, na.rm = T)

# Save the data frame with .RData
save(bms.data, file="F:/E-Books/Data Science/R/Datasets/Practice Problem Big Mart Sales III/BigDataMart.RData")
