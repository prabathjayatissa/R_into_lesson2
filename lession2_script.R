##LOAD PACKAGE##
library(tidyverse)
library(ggplot2)
library(readr)
library(dplyr)

## Read in data and organize ##
# read in data

data = readr::read_csv("data/pets.csv",  col_types = "cffiid")

dplyr::glimpse(data)

#Look at data
dim(data)
head(data)
tail(data)
xtabs(~pet, data)
xtabs(~country, data_cats)

## Make Figures
#Weight by Pet
data.plot <- ggplot(data, aes(x=pet, y=weight)) +
  geom_boxplot()
data.plot

#Pretty the plot
data.plot <- ggplot(data, aes(x= pet, y= weight, fill = pet)) +
  geom_boxplot()+
  theme_bw()+
  ggtitle("Weight by pet")
data.plot

#save the plot
ggsave("figures/boxplot_pets_weight.png",
       plot = data.plot,
       width = 6,
       height = 4,
       dpi = 300)

data.plot_2 <- ggplot(data, aes(x= country, y= score)) +
  geom_bar()+
  theme_bw()+
  ggtitle("Weight by pet")
data.plot_2

#Example
library(tidyverse)
library(modelr)
?ggplot
?`modelr-package`
View(data)
View(construction)

ggplot(construction, aes (y =`1 unit`, 
                          x = Northeast,
                          colour = Month )) +
         geom_point (col="Red", 
                     size =2)

       