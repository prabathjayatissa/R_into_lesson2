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
xtabs(~country, data)

## Make Figures
#Weight by Pet
data.plot <- ggplot(data, aes(x=pet, y=weight)) +
  geom_boxplot(colours=data.plot)
data.plot

#Pretty the plot
data.plot <- ggplot(data, aes(x= pet, y= weight, fill = pet)) +
  geom_boxplot(colours=data.plot )+
  theme_bw()+
  ggtitle("Weight by pet")
data.plot

#save the plot
ggsave("figures/boxplot_pets_weight2.png",
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
?construction

ggplot(construction, aes (y =`1 unit`, 
                                              x = Month )) +
                    geom_point (col="Red", 
                              size =2) +
                    labs(x="North-East", 
                         y="Units",
                        title = "Construction Work On North-East",
                        caption = "Source = https://www.census.gov/construction/nrc/xls/newresconst.xls  ")

ggsave("figures/Construction_Work_On_North-East.png",
       plot = construction.plot,
       width = 6,
       height = 4,
       dpi = 300)

ggplot(construction, aes (y =`1 unit`, 
                          x = Northeast )) +
  geom_point (col="Red", 
            size =1) +
  geom_smooth(method = "lm",
              se =FALSE) +
  labs(x="North-East", 
       y="Units",
       title = "Construction Work On North-East",
       caption = "Source = https://www.census.gov/construction/nrc/xls/newresconst.xls  ")

ggsave("figures/Regression_Construction_Work_On_North-East.png",
       plot = construction3.plot,
       width = 6,
       height = 4,
       dpi = 300)


construction4.plot= ggplot (data, aes(x=score),colour = Red) +
  geom_histogram( bins =15) +
                  
  geom_freqpoly(bins = 15, colour= "Red")

ggsave("figures/Histogram_Construction_Work_On_North-East.png",
       plot = construction4.plot,
       width = 6,
       height = 4,
       dpi = 300)


ggplot(construction, aes(x=Northeast, y=`1 unit`))+
         geom_boxplot(color="black",
                      fill="Light blue",
                      size=2)

       