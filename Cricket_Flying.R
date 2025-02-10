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


ggsave("figures/cricket Temp vs Rate.png",
       plot = cricket1.plot,
       width = 6,
       height = 4,
       dpi = 300)
