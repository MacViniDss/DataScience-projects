install.packages("geobr")

library(geobr)
library(ggplot2)

states <- read_state(year = 2020)

ggplot() +
  geom_sf(data = states, fill = "lightblue", color = "white") +
  theme_minimal()
