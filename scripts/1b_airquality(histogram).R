#Load dataset
airquality
class(airquality)
View(airquality)

#Basic histogram
hist(airquality$Temp)

#Adding labels and colours
hist(airquality$Temp,
     breaks=5,
     main= "Basic Histogram of Air Quality",
     xlab= "Temperature",
     ylab= "Range",
     labels=TRUE,
     col = "lightblue",
     border = "darkblue")

#plottting histogram using GGPLOT2

#basic histogram using ggplot
library(ggplot2)
ggplot(
  airquality,
  aes(x=Temp)
)+
  geom_histogram() +
  theme_light()

# Adding title , colours and lables
ggplot(
  airquality,
  aes(x=Temp)
)+
  geom_histogram(
    bins = 12,
    fill = "lightblue",
    col = "darkblue")+
   labs(
     title= "GGPLOT- Histogram for Air Quality",
     x = "Temperature",
     y = "Range" ) +
 
  theme_light()

#Enchanced by adding subtitle and captions
ggplot(
  airquality,
  aes(x=Temp)
)+
  geom_histogram(
    bins = 12,
    fill = "lightblue",
    col = "darkblue")+
  labs(
    title= "GGPLOT- Histogram for Air Quality",
    subtitle = "La Guardia Airport, New York (May–September 1973)",
    caption = "Source: R built-in dataset 'airquality'",
    x = "Temperature",
    y = "Range" ) +
  
  theme_light()


help("labs")