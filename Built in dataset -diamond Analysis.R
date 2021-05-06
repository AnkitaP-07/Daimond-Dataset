library(tidyverse)
data("diamonds")
print(colnames(diamonds))
head(diamonds)
tail(diamonds)
ncol(diamonds)
nrow(diamonds)

summary(diamonds)
unique(diamonds$color)
unique(diamonds$clarity)
mean(diamonds$price)
median(diamonds$price)
sum(diamonds$price)

# plotting the bar graph using ggplot

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut) , fill = 'purple' , col = 'black')

# plotting the Histogram graph using ggplot with binwidth 0.5

ggplot(data = diamonds)+
  geom_histogram(mapping = aes(x = carat) , binwidth = 0.5 , fill = 'pink', col = 'black')

# plotting the Histogram graph using ggplot with 0.1
ggplot(data = diamonds)+
  geom_histogram(mapping = aes(x = carat) , binwidth = 0.1 , fill = 'purple' , col = 'black')


# histogram with facet wrap
# giving results 
ggplot(data = diamonds)+
  geom_histogram(mapping = aes(x = carat),
                 binwidth = 0.2 , fill = 'white' , col = 'red')+
  facet_wrap(~cut)## (~color)


#plotting frequency plot, having differernt color using "color".
ggplot(data = diamonds,
       mapping = aes(x = carat , color = cut))+
  geom_freqpoly(binwidth = 0.1)

#
ggplot(data = diamonds,
       mapping = aes(x = carat, y = price))+
  geom_boxplot(mapping = aes(group = cut_width(carat , 0.1)))

