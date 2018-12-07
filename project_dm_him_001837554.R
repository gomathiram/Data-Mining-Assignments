vdo <- read.csv("C:/Users/gupta.h/Desktop/k/CAvideos.csv")
vdo1 <- as.data.frame(vdo)
library(ggplot2)
 ggplot(vdo,aes(x= views, y = likes), alpha = 0.8) + geom_point()
ggplot(vdo,aes(x= views, y = likes)) +geom_smooth(aes(x= views, y = likes), method="lm" ) +geom_point()
str(vdo)
ncol(vdo1)
vdo1$category_id <- as.factor(vdo1$category_id)
vdo2 <- vdo1[, c("views", "likes", "dislikes", "comment_count", "category_id")]
vdo3 <- vdo[, -c()
cov_1 <- cor(vdo2[, -4])
library(corrplot)
corrplot.mixed(cov_1)
ggplot(vdo2,aes(x= log(views), y = log(comment_count), colour = category_id, shape = category_id)) +geom_smooth(method="lm",formula = y ~ x + I(x^2)) +geom_point()
ggplot(vdo2,aes(x= log(views), y = log(comment_count), colour = category_id, factor(category_id))) +geom_smooth(method="loess") +geom_point()



ggplot(vdo2,aes(y= views, x = category_id)) +geom_point() + stat_summary(fun.y= mean, fun.ymin = min, fun.ymax = max, color = 'red', size = 2)
ggplot(vdo2, aes(category_id)) + geom_bar()
ggplot(vdo2,aes(x= category_id, y= views))  + stat_summary_bin( fun.y = "mean", geom = "bar")

