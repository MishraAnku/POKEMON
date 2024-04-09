#loading dataset
pokemon <- read.csv("C:\Users\Amrendra Mishra\Downloads\\Pokemon.csv")
View(pokemon)

#understanding dataset
nrow(pokemon)
ncol(pokemon)
sum(is.na(pokemon))


#Glancing categorical columns
table(pokemon$type1)
table(pokemon$generation)
table(pokemon$is_legendary)

#Understanding numerical columns
min(pokemon$sp_attack)
max(pokemon$sp_attack)

min(pokemon$hp)
max(pokemon$hp)

#Renaming columns
colnames(pokemon)[colnames(pokemon)=="type1"]<-"primary_type"
colnames(pokemon)[colnames(pokemon)=="type2"]<-"secondary_type"
----------------------------------------------------------------------------
#Grass Pokemon  

library(dplyr)  
pokemon %>% filter(primary_type=="grass") -> grass_pokemon

min(grass_pokemon$speed)
max(grass_pokemon$speed)

mean(grass_pokemon$sp_attack)
mean(grass_pokemon$sp_defense)

#visualizing stats of grass-pokemon
library(ggplot2)

#hp
ggplot(data = pokemon,aes(x=hp)) + geom_histogram()
ggplot(data = pokemon,aes(x=hp)) + geom_histogram(fill="palegreen4")

#height
ggplot(data = grass_pokemon,aes(x=height_m)) + geom_histogram()

#weight
ggplot(data = grass_pokemon,aes(x=weight_kg)) + geom_histogram()

#legendary vs not-legendary
ggplot(data = grass_pokemon,aes(x=is_legendary)) + geom_bar()

---------------------------------------------------------
#Fire Pokemon  
  
pokemon %>% filter(primary_type=="fire") -> fire_pokemon

min(fire_pokemon$speed)
max(fire_pokemon$speed)

mean(fire_pokemon$sp_attack)
mean(fire_pokemon$sp_defense)


#visualizing stats of fire-pokemon

#generation
ggplot(data = fire_pokemon,aes(x=generation)) + geom_bar()

#secondary_type
ggplot(data = fire_pokemon,aes(x=secondary_type)) + geom_bar()

#sp_attack vs sp_defense
ggplot(data = fire_pokemon,aes(x=sp_attack,y=sp_defense)) + geom_point()

#height vs weight
ggplot(data = fire_pokemon,aes(x=height_m,y=weight_kg)) + geom_point()

-------------------------------------------------------------------------
#water_pokemon  
pokemon %>% filter(primary_type=="water") -> water_pokemon

min(water_pokemon$speed)
max(water_pokemon$speed)

mean(water_pokemon$sp_attack)
mean(water_pokemon$sp_defense)

#visualizing stats of water pokemon

#against_ice
ggplot(data = water_pokemon,aes(x=against_ice)) + geom_histogram()

#against_poison
ggplot(data = water_pokemon,aes(x=against_poison)) + geom_histogram()

#against_grass
ggplot(data = water_pokemon,aes(x=against_grass)) + geom_histogram()


