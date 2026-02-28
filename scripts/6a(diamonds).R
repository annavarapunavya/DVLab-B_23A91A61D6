#Load & understand the  Dataset
data(diamonds)
data(package = .packages(all.available = TRUE))
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds

#Basic Scatter plot
plot(diamonds$carat,diamonds$price)

#improved scatter
plot(diamonds$carat,diamonds$price,col=rgb(0,0,1,0.1),pch=16,
     main="Scatter Plot:Carat vs Price")
#Hexbin usind Base R
install.packages('hexbin')
library(hexbin)
hb <- hexbin(diamonds$carat,diamonds$price,xbins=40)
plot(hb,main="Hexbin Plot")

#Basic Hexbin
ggplot(diamonds,aes(x=carat,y=price))+
  geom_hex()

#Labeled Hexbin plot
ggplot(diamonds,aes(carat,price)) +
  geom_hex()+
  labs(title="Hexgon Binning:Diamond Structure", x="Carat",y="Price") +
  theme_minimal()

#Control Hexagon density
ggplot(diamonds,aes(carat,price)) +
  geom_hex(bins=40)+
  scale_fill_gradient(low="lightgreen",high="red")+
  theme_minimal()

#Color eanings:
# - Light -> fewer diamonds
# -Dark -> dense region

#Professional palette(Viridis)
ggplot(diamonds,aes(carat,price)) +
  geom_hex(bins=35)+
  scale_fill_viridis_b()+
  theme_minimal()

#Add legend title
ggplot(diamonds,aes(carat,price)) + geom_hex(bins=20) +
  scale_fill_viridis_c(name="Count") +
  theme_minimal()

#Faceted hexbin
ggplot(diamonds,aes(carat,price)) + geom_hex() +scale_fill_viridis_c() +
  facet_wrap(~cut) +
  theme_minimal()

#Log scale hexbin
ggplot(diamonds,aes(carat,price)) + geom_hex() + scale_fill_viridis_c()+
  scale_y_log10()+
  theme_minimal()
