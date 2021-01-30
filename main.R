library(caret)

# Import train data
trainData <- read.delim("C:\\Users\\Haldun\\Downloads\\pml-training.csv", header=T, sep=",") 

# Import test data
testData <- read.delim("C:\\Users\\Haldun\\Downloads\\pml-testing.csv", header=T, sep=",") 

# Fit model
modFit <- train(classe ~., method="rf", data=trainData, na.action = na.omit)

# Predict
pred <- predict(modFit, newdata=testData)
