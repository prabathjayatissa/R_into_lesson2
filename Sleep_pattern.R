library(tidyverse)
library(modeldata)
?geom_boxplot

glimpse(msleep)

ggplot(msleep, aes(x = vore,
                   y= sleep_total,
                   fill = vore)) +
  geom_boxplot() +
  labs(x= "Vore" ,
       y= "Sleep Total")
