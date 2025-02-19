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

#Chart the Dogs weight against the Score 
ggplot(data_dogs, aes(x=weight, y=score))+
  geom_point(col="Red", size =2)+
  labs(x="Weight of Dogs",
       y="Score of the Dogs",
  title="Performance of Dogs",
  caption = "Performance of Dogs in UK during 1891")

head(data_dogs)
ggplot(data_dogs, aes(x=country, y=age))+
  geom_boxplot(col="Red",fill= "lightblue")+
  labs(x="Weight of Dogs",
       y="Score of the Dogs",
       title="Performance of Dogs",
       caption = "Performance of Dogs in UK during 1891")

  