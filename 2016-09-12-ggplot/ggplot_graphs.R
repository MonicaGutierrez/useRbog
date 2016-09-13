
# install.packages("devtools")
devtools::install_github("hadley/tidyverse")
library(tidyverse)

reorder_size <- function(x) {
  factor(x, levels = names(sort(table(x))))
}

##GGplot vs. Qplot
ggplot(diamonds, aes(clarity, fill = cut)) + geom_bar()
qplot(clarity, fill = cut, data = diamonds, geom = "bar")

##Scatter Plot and Jitter Plot
x <- c(1,2,2,4,4,5,5,5,6,6,6,7,1,2,3)
y <- x*3
data <- data.frame(x,y)
ggplot(data, aes(x,y))

##Scatter Plot
ggplot(data, aes(x, y)) + geom_point()
length(x)
##Scatter Plot with Jitter
ggplot(data, aes(x, y)) + geom_jitter()
##Scatter Plot with size
ggplot(data, aes(x, y)) + geom_count()

##Simple Bar Plot by Count
str(mpg)
ggplot(mpg, aes(cyl)) + geom_bar()

##Simple Bar Plot by Displ
ggplot(mpg, aes(cyl)) + geom_bar(aes(weight = displ))

#Alternative ways of the previous plot
mpg_prueba <- mpg %>% group_by(cyl) %>% summarise(weight = sum(displ))
ggplot(mpg_prueba, aes(cyl)) + geom_bar(aes(weight = weight))
ggplot(mpg_prueba, aes(x=cyl, y=weight)) + geom_bar(stat = "identity")

##Colored Bar Plot by cyl
ggplot(mpg_prueba, aes(x=cyl, y=weight, fill=as.factor(cyl))) + geom_bar(stat = "identity")
##Colored Bar Plot by weightasfact
ggplot(mpg_prueba, aes(x=cyl, y=weight, fill=as.factor(weight))) + geom_bar(stat = "identity")

##Stacked Bar Plot
ggplot(mpg, aes(class)) + geom_bar(aes(fill = drv))

##Ordered Stacked Bar Plot
ggplot(mpg, aes(reorder_size(class))) + geom_bar(aes(fill = drv))

##100% Stacked Bar Plot
ggplot(mpg, aes(class)) + geom_bar(aes(fill = drv), position = "fill")

##Grouped Bar Plot not clear ...
ggplot(mpg, aes(class)) + geom_bar(aes(fill = drv), position = "dodge")

##Another way to do same plot
mpg_prueba_2 <- mpg %>% group_by(class, drv) %>% summarise(count=n())
ggplot(mpg_prueba_2, aes(class, weight=count, fill=drv)) + geom_bar(position = "dodge")

##Fixing Grouped Bar Plot
mpg_prueba_fix <- mpg_prueba_2 %>% spread(drv, count) %>% gather(drv, count, -class)
ggplot(mpg_prueba_fix, aes(class, weight=count, fill=drv)) + geom_bar(position = "dodge")

##Grouped Notched Box Plot
ggplot(mpg, aes(class, hwy)) + geom_boxplot(aes(colour = drv), notch = TRUE)
##Grouped Box Plot
ggplot(mpg, aes(class, hwy)) + geom_boxplot(aes(colour = drv))

##Simple Box Plot with Scatter Plot
#Points on the box
ggplot(mpg, aes(class, hwy)) + geom_boxplot() + geom_jitter() 
#Points behind the box
ggplot(mpg, aes(class, hwy)) + geom_jitter() + geom_boxplot() 
# ---> you can also fit the notch parameter to notch the box plot <---

##Simple Violin Plot
ggplot(mpg, aes(drv, hwy)) + geom_violin()
##Simple Violin with Jittered Points
ggplot(mpg, aes(drv, hwy)) + geom_jitter() + geom_violin() 

##Grouped violin Plot
ggplot(mpg, aes(class, hwy)) + geom_violin(aes(colour = drv))
# ---> you can also add geom_jitter layer <---

##Grouped Scatter Plot
ggplot(mpg, aes(class, hwy, color=class)) + geom_point()
##Grouped Scatter Plot with jiterred point
ggplot(mpg, aes(class, hwy, color=class)) + geom_jitter()

##Stacked Bar Plot Single Variable
ggplot(mtcars, aes(factor(1), fill = factor(cyl))) + geom_bar(width = 1) 

##Pie Chart
ggplot(mtcars, aes(factor(1), fill = factor(cyl))) + geom_bar(width = 1) + 
  coord_polar(theta = "y") + theme_dark()

##Bullseye Chart
ggplot(mtcars, aes(factor(1), fill = factor(cyl))) + geom_bar(width = 1) + 
  coord_polar(theta = "x") + theme_bw()

##Doughnut Chart
ggplot(mtcars, aes(factor(1), fill = factor(cyl))) + geom_bar(width = 0.1) + 
  coord_polar(theta = "y") + theme_minimal()

##Faceting
facet_graph <- ggplot(mpg, aes(cty, hwy)) + geom_point() 
facet_graph + facet_grid(. ~ fl)
facet_graph + facet_grid(year ~ .)
facet_graph + facet_grid(year ~ fl)
facet_graph + facet_wrap(~ fl)

##Extensión de mapas
##install.packages("maps") if needed
devtools::install_github("nebulae-co/colmaps")
library(colmaps)
library(maps)
devtools::install_github("nebulae-co/homicidios")
library(homicidios)
tail(homicidios)

plot <- homicidios %>%
  filter(año == 2012) %>%
  colmap(municipios, data = ., var = "tasa")
plot


#plotly
#ggrepel
#ggplot extensions
#ggsave
