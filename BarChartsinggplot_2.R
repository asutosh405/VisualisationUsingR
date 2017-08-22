
##-------------Bar Charts in ggplot--------------------

library(datasets)

# setting the ggplot object

cyl.am <- ggplot(mtcars, aes(x = factor(cyl)))
cyl.am
# The base layer is available : cyl.am

# Add geom (position = "stack" by default)

cyl.am + geom_bar()

#cyl.am + geom_bar(col="red")

# Fill - show proportion

cyl.am <- cyl.am + aes(fill=factor(am))
cyl.am + geom_bar()

## stacked bar chart

cyl.am + geom_bar(position="fill") ## shwing the proportion from 100%; note the change in y-axis

## certain parameters that both appear in the aes part and geometry part
## geometry -- fill showing how to display when i am presenting the data
## aes -- fill showing how to distinguish between different categories

##geom_bar() --- fill, stack, dodge
