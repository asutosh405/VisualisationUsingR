## -------------ggplot - Histogram and More on Bar Charts---------------

# Let's learn some more bars. Histograms are also types of bars, we just make them using geom_histogram.

# BARS: Bars are made using geom_bar, which you would have plotted in the previous assignment
# Bars take position arguments like stack, dodge, fill etc. which changes the appearance of bars drastically 
# We'll use the three most common position arguments: "stack", "fill" and "dodge"

# Draw a bar plot of cyl, filled according to am
# geom_bar has no argument, which makes it same as geom_bar(position = "stack")

ggplot(mtcars, aes(x=cyl)) + geom_bar()

# Change the position argument to stack. It will be exactly same as previous plot 
ggplot(mtcars, aes(x=cyl, fill = am)) + geom_bar(position = "stack")
       
## here am is just a number, grouping is not done; now lets group it

# Same mistake of forgetting factor again? Note that fill is not mapped to am; add factor around am

ggplot(mtcars, aes(x=cyl, fill = factor(am))) + geom_bar(position = "stack")

# Change the position argument to "fill" - It covers the entire length of y axis 
ggplot(mtcars, aes(x=cyl, fill = factor(am))) + geom_bar(position = "fill")

# Change the position argument to "dodge"
# Dodge makes the bars appear beside each other, instead "stacking" over one another
# This makes it easy to compare y values of both colors (am variable) 

ggplot(mtcars, aes(x=cyl, fill = factor(am))) + geom_bar(position = "dodge")


##  -----------------Frequency Polygons---------------------------

# Frequency polygons are a variation of histograms which make the plot continuous
# Frequency Polygon also plots count on y axis (no of observations)
# Histograms use Bars, frequency polygons use Lines

# Make a basic histogram, add coloring defined by col = cyl and mpg on x-axis... 
ggplot(mtcars, aes(x=mpg, fill = factor(cyl), col=factor(cyl))) + geom_histogram(binwidth = 1)

# Change position to identity, keep using binwidth = 1

# Make a frequency polygon using freqpoly: Change geom to freqpoly (position is identity by default) 

ggplot(mtcars, aes(x=mpg, fill = factor(cyl))) + geom_freqpoly(binwidth = 1)


### BINNING 
ggplot(mtcars, aes(x=mpg)) + geom_histogram()

ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth = 2)
myBlue <- "Blue"
ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth = 1, fill = myBlue)

