# Loading packages
library(ggplot2)
library(dplyr)


#Building Blocks of layers with the grammar of graphics
#Data: The element is the data set itself
#Aesthetics: The data is to map onto the Aesthetics attributes such as x-axis, y-axis, color, fill, size, labels, alpha, shape, line width, line type
#Geometrics: How our data being displayed using point, line, histogram, bar, boxplot
#Facets: It displays the subset of the data using Columns and rows
#Statistics: Binning, smoothing, descriptive, intermediate
#Coordinates: the space between data and display using Cartesian, fixed, polar, limits
#Themes: Non-data link


View(mtcars)
# Data Layer
ggplot(data = mtcars)

# Dot plot
# Aesthetic Layer
ggplot(data = mtcars, aes(x = hp, y = mpg, col = disp))


# Geometric layer

ggplot(data = mtcars, 
       aes(x = hp, y = mpg)) + geom_point()

ggplot(data = mtcars, 
       aes(x = hp, y = mpg)) + geom_point( col="red")

ggplot(data = mtcars, 
       aes(x = hp, y = mpg, col = disp)) + geom_point()

# Observe difference colour property
#




# Adding size
ggplot(data = mtcars, 
       aes(x = hp, y = mpg, size = disp)) + geom_point()



ggplot(data = mtcars, 
       aes(x = hp, y = mpg)) + geom_point(size=2)

# Adding color and shape
ggplot(data = mtcars, 
       aes(x = hp, y = mpg, col = factor(cyl), 
           shape = factor(am))) +
  geom_point()


ggplot(data = mtcars, 
       aes(x = hp, y = mpg, col = factor(cyl), 
           )) +
  geom_point()


ggplot(data = mtcars, 
       aes(x = hp, y = mpg)) +
  geom_point(col="red")


# Histogram plot
ggplot(data = mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 10, col="red")



View(msleep)

# Basic histogram
ggplot(msleep, aes(x=sleep_total)) + geom_histogram()

# Change the width of bins
ggplot(df, aes(x=Average_income)) +    
  
  geom_histogram(binwidth=1)

# Change colors
p<-ggplot(df, aes(x=Average_income)) +   
  
  geom_histogram(color="white", fill="red")
p




# Statistics layer
ggplot(data = mtcars, aes(x = hp, y = mpg)) + 
  geom_point() + 
  stat_smooth(method = lm, col = "red")



# Coordinates layer: Control plot dimensions
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  stat_smooth(method = lm, col = "red") +
  scale_y_continuous("mpg", limits = c(2, 35), 
                     expand = c(0, 0)) +
  scale_x_continuous("wt", limits = c(0, 25),
                     expand = c(0, 0)) + coord_equal()


# Add coord_cartesian() to proper zoom in
ggplot(data = mtcars, aes(x = wt, y = hp, col = am)) +
  geom_point() + geom_smooth() +
  coord_cartesian(xlim = c(3, 6))



# Theme layer
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point() + facet_grid(. ~ cyl) +
  theme(plot.background = element_rect(
    fill = "black", colour = "gray"))



ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point() + facet_grid(am ~ cyl) + 
  theme_gray()