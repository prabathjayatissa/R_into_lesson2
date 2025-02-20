library(dplyr)
library(ggplot2) 
library(readr)

#Looking at the dataset
data = readr::read_csv("data/pets.csv")
dim(data)
head(data)
tail(data)
xtabs(~gpa,data )
dplyr::glimpse(data)

#Separate the dogs data from the dataset
data_dogs <- data %>%
  dplyr::filter(pet=="dog")  
data_dogs

# Chart the Dogs weight against the Score - Scatter Plot, Box-Plot, Frequency-Polygon, Histogram

ggplot(data_dogs, aes(x=weight, y=score))+
  geom_point(col="Red", size =2)+
  labs(x="Weight of Dogs",
       y="Score of the Dogs",
  title="Performance of Dogs",
  caption = "Performance of Dogs in UK during 1891")

head(data_dogs)
ggplot(data_dogs, aes(x=country, y=age))+
  geom_boxplot(col="Red",fill= "lightblue", size = 0.5)+
  labs(x="Weight of Dogs",
       y="Score of the Dogs",
       title="Performance of Dogs",
       caption = "Performance of Dogs in UK during 1891")


ggplot(data_dogs, aes(x=score))+
  geom_freqpoly(binwidth= 2, col="red")+
  geom_histogram(col="lightblue")+
  labs(y="Number of Dogs",
       x="Score of the Dogs",
       title="Performance of Dogs",
       caption = "Performance of Dogs in UK during 1891")


library(tidyverse)
library(dslabs)  
data(murders)

murders %>%
  ggplot(aes(population,total,label=abb, color=region))+
  geom_label()
       
           
  