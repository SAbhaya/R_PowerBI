library(plotly)
library(dplyr)


data("mtcars", package = "datasets")

pairs(mtcars)

model <- lm(mpg ~ hp + wt, mtcars)

summary(model)$coef

p<- plot_ly(data = mtcars, z=~mpg, x=~hp, y=~wt, opacity = 0.8) %>% add_markers()
p %>% add_surface()









fig <- plot_ly(z = ~volcano)
fig <- fig %>% add_surface()

fig
