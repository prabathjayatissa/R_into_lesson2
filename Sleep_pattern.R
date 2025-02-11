library(tidyverse)
library(modeldata)
?geom_boxplot

glimpse(msleep)

ggplot(msleep, aes(x = vore,
                   y= sleep_total,
                   fill = vore)) +
  geom_boxplot(show.legend = FALSE) +
  geom_jitter(width = 0.2,
              show.legend = FALSE)+
  labs(x= "Vore" ,
       y= "Sleep Total")


ggsave("figures/Total_Sleep_vs_Species.png",
       plot = sleep1.plot,
       width = 6,
       height = 4,
       dpi = 300)

# observation on the Penguines
data("penguins")
glimpse(penguins)

ggplot(penguins, aes(x=species,
                     y=bill_length_mm,
                     fill = species) )+
        
        geom_violin(width =0.5)+
  geom_boxplot(show.legend = FALSE,
               width= 0.3)
      

ggsave("figures/Penguines_Bill_length_vs_Species.png",
       plot = penguine1.plot,
       width = 6,
       height = 4,
       dpi = 300)

table_1 = table(penguins$species,
      penguins$island)
table_1

write.table(table_1,file = "tables/IslandvsSpecies.txt")

