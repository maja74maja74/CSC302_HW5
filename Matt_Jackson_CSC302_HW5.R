library(mapdata)
library(maps)
library(ggplot2)
library(tidyverse)
library(ggrepel)
library(cowplot)
mp <- map_data('state')
california <- mp[mp$region == 'california',]  
load("C:/Users/mjack/Downloads/wind_turbines.rda")
wind_ca <- wind_turbines %>%
  filter(t_state == "CA")
p <- ggplot(california,  aes(x = long, y = lat, group = group)) + 
    geom_polygon(color = "black", fill = "gray") 
p
p + geom_point(data=wind_ca, mapping=aes(x=xlong, y = ylat, group=NULL, color ='red',)) +
  theme(legend.position ='none')


