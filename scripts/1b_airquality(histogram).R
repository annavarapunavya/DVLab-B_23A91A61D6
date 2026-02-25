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