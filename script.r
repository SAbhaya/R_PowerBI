
data("cars", package = "datasets")
modelcars <- lm(dist ~ speed, data = cars)






pred <- predict(modelcars, interval = "prediction")


newdata <- cbind(cars, pred)


library("ggplot2")
plot1 <- ggplot(newdata, aes(speed, dist)) +
  geom_point() +
  stat_smooth(method = lm, se=FALSE)



plot1 + geom_line(aes(y = lwr), color = "red", linetype = "dashed")+
  geom_line(aes(y = upr), color = "red", linetype = "dashed")

plot(cars)
plot(density(cars$speed))







library(dplyr)
library(plotly)

data("mtcars", package = "datasets")

pairs(mtcars)

model <- lm(mpg ~ hp + wt, mtcars)

p<- plot_ly(data = mtcars, z=~mpg, x=~hp, y=~wt, opacity = 0.8) %>% add_markers()
p



summary(model)$coef


x <- seq(50, 200, length = 50)
y <- seq(1, 5, length = 50)
plane <- outer(x, y, function(a, b){37.22727012 -0.03177295*a -3.87783074*b})
p %>% add_surface(x=~x, y=~y, z=~plane, showscale = FALSE)
