mow.df <- read.csv("~/Downloads/RidingMowers.csv")
mow.df <- mow.df[, c(1:3)]
logit.reg <- glm(Ownership ~ ., data = mow.df, family = "binomial")
summary(logit.reg)
logit.reg.pred <- predict(logit.reg, mow.df, type = "response")
data.frame(actual = RidingMowers$Ownership, predicted = logit.reg.pred)

