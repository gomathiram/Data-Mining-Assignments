> car.df <- read.csv("~/Downloads/ToyotaCorolla.csv", header=FALSE)
> car.df <- car.df[1:1000, ]
> selected.var <- c(3, 4, 7, 8, 9, 10, 12, 13, 14, 17, 18)
car.df <- car.df[,selected.var]
options(scipen = 999)
myfunc=lm(ToyotaCorolla$V3 ~. , data = mydata)
> train.index <- sample(c(1:1000), 600)
> train.df <- car.df[train.index, selected.var]
> valid.df <- car.df[-train.index, selected.var]




train.df <- cbind(train.df[,], fuel_type[,])
head(train.df)
search <- leaps::regsubsets(ToyotaCorolla$V3 ~ . , data = train.df, nbset= 1, nvmax =  dim(train.df)[2], method = "exhaustive")
sum <- summary(search)
car.lm <- lm(ToyotaCorolla$V3 ~ . , data = train.df)
