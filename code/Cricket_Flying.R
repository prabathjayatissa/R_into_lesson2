library(tidyverse)
library(modeldata)
library(palmerpenguins)
View(crickets)
?crickets

cricket1.plot = ggplot(crickets, aes(x=temp,
                     y=rate,
                     
                     color = species))+
  geom_point(size=2,
             alpha =0.2) +
  geom_smooth(method = "lm",
              se= FALSE)+
  labs(x= "Temp",
       y= "Rate",
       title = "Crickets - Temp Vs Rate Plot",
       caption = "Source:McDonald (2009)") +
  scale_color_brewer(palette = "Dark2")
print(cricket1.plot )

ggsave("figures/cricket Temp vs Rate.png",
       plot = cricket1.plot,
       width = 6,
       height = 4,
       dpi = 300) 

#install Pacman
install.packages("pacman")
require(pacman)
library(pacman)

library(datasets)
#load the iris data
head(iris)

plot(iris$Species)
plot(iris$Sepal.Length)
plot(iris$Sepal.Width)
plot(iris$Petal.Length)
plot(iris$Petal.Width)
plot(iris$Sepal.Length,iris$Sepal.Width,
     col="#cc0000",
     pch = 19,
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Sepal Legth",
     ylab = "Sepal Width")

#for all the graphs
plot(cos,0,2*pi)
plot(exp,1,5)
plot(dnorm, -3, +3)
iris
?mtcars
head(mtcars)
barplot(mtcars$mpg,
        col = "red",
        pch =19,
        main = "MPG Value",
        xlab = "Number of Vehicals",
        ylab = "Miles Per Gallon")


cylinder <- table(mtcars$cyl)
barplot(cylinder)
plot(cylinder)

#Histogram
hist(iris$Sepal.Length,
     col = "lightblue",
     xlab = "Frequncy",
     ylab = "Sepal Length",
     main = "Histogrm of Sepal Length")

# To put graphs into 3 raws and 1 column
par(mfrow = c(3,1))

hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "",
     xlab ="",
     col ="lightblue")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks =9,
     main = "",
     xlab ="",
     col ="lightblue")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks =9,
     main = "",
     xlab ="",
     col ="lightblue")

# Back to  original graphical parameters
par(mfrow = c(3,1))
par(mfraw = c(2,1))

hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "",
     xlab ="",
     col ="lightblue")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks =9,
     main = "",
     xlab ="",
     col ="lightblue")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks =9,
     main = "",
     xlab ="",
     col ="lightblue")

