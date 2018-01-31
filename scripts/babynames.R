library(tidyverse)
library(babynames)

# Plot name frequency over time 
babynames %>%
  filter(name == "Mary" & sex == "F") %>%
  ggplot(aes(x = year, y = n)) +
  geom_line() + labs(x = "Year", y = "Number Born", 
                     title = "Mary as a Girl-Name")

# Compare name use by gender over time
babynames %>%
  filter(name == "Leslie") %>%
  ggplot(aes(x = year, y = n)) +
  geom_line(aes(color = sex)) + labs(x = "Year", y = "Number Born", 
                                     title = "Leslie, by Sex")