UniversalBank <- read.csv("~/Downloads/UniversalBank.csv")
View(UniversalBank)
bank.df <- read.csv("~/Downloads/UniversalBank.csv")
bank.df <- bank.df[ , -c(1, 5)]
bank.df$Education <- factor(bank.df$Education, levels = c(1, 2, 3), labels = c("Undergrad", "Graduate", "Advanced/Professional"))
set.seed(2)
train.index <- sample(c(1:dim(bank.df)[1]), dim(bank.df)[1]*0.6)
train.df <- bank.df[train.index, ]
valid.df <- bank.df[-train.index, ]
logit.reg <- glm(UniversalBank$PersonalLoan ~ . , data = train.df, family = "binomial")
options(scipen = 999)
summary(logit.reg)