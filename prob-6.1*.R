BostonHousing <- read.csv("~/Downloads/BostonHousing.csv")
View(BostonHousing)
BostonHousing <- BostonHousing[1:506, ]
selected.var <- c(1, 4, 6, 13)
set.seed(1)
train.index <- sample(c(1:506), )
train.df <- BostonHousing[train.index, selected.var]
valid.df <- BostonHousing[-train.index, selected.var]
boston.lm <- lm(BostonHousing$MEDV ~ BostonHousing$CRIM + BostonHousing$CHAS + BostonHousing$RM)
summary(boston.lm)
model1 <-lm(BostonHousing$MEDV~ BostonHousing$CRIM+BostonHousing$ZN+BostonHousing$CHAS+BostonHousing$NOX+BostonHousing$RM+BostonHousing$DIS+BostonHousing$RAD+BostonHousing$TAX+BostonHousing$PTRATIO+BostonHousing$LSTAT,data=train.df)
summary(model1)
model2 <-lm(BostonHousing$MEDV~ BostonHousing$CRIM+BostonHousing$ZN+BostonHousing$CHAS+BostonHousing$NOX+BostonHousing$RM+BostonHousing$DIS+BostonHousing$RAD+BostonHousing$PTRATIO+BostonHousing$LSTAT,data=train.df)
summary(model2)  
model3 <-lm(BostonHousing$MEDV~ BostonHousing$CRIM+BostonHousing$ZN+BostonHousing$NOX+BostonHousing$RM+BostonHousing$DIS+BostonHousing$RAD+BostonHousing$PTRATIO+BostonHousing$LSTAT,data=train.df)
summary(model3)