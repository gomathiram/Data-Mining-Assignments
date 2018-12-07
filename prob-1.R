> BostonHousing <- read.csv("~/Downloads/BostonHousing.csv")
View(BostonHousing)
BostonHousing <- BostonHousing[1:506, ]
selected.var <- c(1, 4, 6, 13)
set.seed(1)
train.index <- sample(c(1:506), )
train.df <- BostonHousing[train.index, selected.var]
valid.df <- BostonHousing[-train.index, selected.var]
boston.lm <- lm(BostonHousing$MEDV ~ BostonHousing$CRIM + BostonHousing$CHAS + BostonHousing$RM)
summary(boston.lm)