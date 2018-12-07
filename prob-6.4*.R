 car.df <- read.csv("~/Downloads/ToyotaCorolla.csv", header=FALSE)
 car.df <- car.df[1:1437, ]
 selected.var <- c(3, 4, 7, 8, 9, 10, 12, 13, 14, 17, 18)
 car.df <- car.df[,selected.var]
 options(scipen = 999)
 myfunc=lm(ToyotaCorolla$V3 ~. , data = car.df)
 train.index <- sample(c(1:1437), dim(car.df)[1]*0.5)
 train.df <- car.df[train.index, ]
 valid.df <- car.df[-train.index, ]
head(train.df)
car.lm <- lm(ToyotaCorolla$V3 ~ . , data = train.df)
summary(car.lm)