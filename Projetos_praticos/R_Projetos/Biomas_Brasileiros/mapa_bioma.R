rm(list=ls()) #Limpar Memoria
#Instalando packages
install.packages("geobr")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("rnaturalearth")
install.packages("sp")
install.packages("gridExtra")
install.packages("scales")
install.packages("ggspatial")

#Ativando a biblioteca
library(geobr)
library(dplyr)
library(ggplot2)
library(rnaturalearth)
library(sp)
library(gridExtra)
library(scales)
library(ggspatial)

search() #--> verifica pacotes ativos

mapa_brasil <- read_state(code_state = "all",year = 2020)
biomas<-geobr::read_biomes()
head(biomas)

# Plot e viewer: CERRADO
cerrado<-dplyr::filter(biomas, name_biome=='Cerrado')

ggplot() +
  geom_sf(data = mapa_brasil, fill = "white", color = "red") + 
  geom_sf(data = cerrado, aes(fill = "Cerrado"), alpha = 0.5, color = "blue") +
  scale_x_continuous(labels = comma) + 
  scale_y_continuous(labels = comma) +
  scale_fill_manual(name = "Bioma", values = c("Cerrado" = "lightgray"))+
  labs(title = 'Mapa Bioma Cerrado',  
       caption = 'Fonte: Library GeoBr',
       x = "Longitude",  
       y = "Latitude") +
  annotation_north_arrow(location = "tr",style = north_arrow_fancy_orienteering) +
  annotation_scale(location = "br")
#Instalando MapView
install.packages('systemfonts') #feito
install.packages('textshaping') #feito
install.packages('svglite') #feito
install.packages('leafpop') #feito

install.packages("mapview")

library(mapview)
mapview(mapa_brasil,col.regions="gray")+
  mapview(cerrado,col.regions="red")

# Outros biomas
head(biomas)
#amazonias
amazonia<-dplyr::filter(biomas, name_biome=='Amazônia')
mapview(mapa_brasil,col.regions="gray")+mapview(amazonia,col.regions="green")
#caatinga
caatinga<-dplyr::filter(biomas, name_biome=='Caatinga')
mapview(mapa_brasil,col.regions="gray")+mapview(caatinga,col.regions="yellow")
#unindo os três

mapview(mapa_brasil,col.regions="gray")+mapview(amazonia,col.regions="green")+
  mapview(caatinga,col.regions="yellow")+mapview(cerrado,col.regions="red")



