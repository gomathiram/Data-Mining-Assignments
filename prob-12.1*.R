library(DiscriMiner)
mydata = read.csv("~/Downloads/UniversalBank.csv")
mydata = mydata[ , -c(1, 5)]
head(mydata)
set.seed(2) 
train.index <- sample(c(1:dim(mydata)[1]), dim(mydata)[1]*0.6) 
traindata = mydata[train.index, ] 
testdata = mydata[-train.index, ]
ldafunc = DiscriMiner::linDA(mydata[,1:2], mydata[,3])
ldafunc
propensity.owner = exp(ldafunc$scores[,2])/(exp(ldafunc$scores[,1])+exp(ldafunc$scores[,2]))
Pred_Scores = round(ldafunc$scores)
Pred_prob = round(propensity.owner)
data.frame(Actual_y = mydata$Ownership, Predict_y = ldafunc$classification, Pred_Scores, Pred_prob)