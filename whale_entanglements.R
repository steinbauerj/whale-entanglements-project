# load packages to read, write and process data
library(readr)
library(dplyr)
library(ggplot2)

# load fishery entanglements data
entanglements <- read.csv("gray_06_17.csv")

total_year <- entanglements %>%
  group_by(year) %>%
  summarize(case_id = n())

# save basic chart template
entanglements_chart <- ggplot(total_year, aes(x = year, y = case_id)) +
  scale_x_continuous(breaks = c(2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017)) +
  scale_y_continuous(limits = c(0,20)) +
  xlab("") +
  ylab("") +
  theme_minimal(base_size = 14, base_family = "ArialMT")

plot(entanglements_chart)

# make a line chart
entanglements_chart +
  geom_line(size = 1.5,
            color = "darkgoldenrod2") +
  ggtitle("The number of whales tangled 
in fishing gear spiked in 2017")

# make a column chart
entanglements_chart +
  geom_bar(stat = "identity",
           fill = "darkgoldenrod2",
           width = c(.5)) +
  ggtitle("Over the last decade, the number of whales 
tangled in fishing gear has increased")

names(postscriptFonts())

# entanglements by month, 2017
# I began attempting to mutate the column "months" to change the values, which are written as numbers, into text.
entanglements_2017 <- entanglements %>%
  filter(year == 2017) %>%
  select(case_id, month, state) %>%
  mutate(month=replace(month, 1, "Jan")) %>%
  group_by(month) %>%
  summarize(case_id = n())

# save basic chart template
entanglements_2017_chart <- ggplot(entanglements_2017, aes(x = month, y = case_id)) +
  xlab("") +
  ylab("") +
  theme_minimal(base_size = 14, base_family = "ArialMT")

plot(entanglements_2017_chart)

# make a column chart
entanglements_2017_chart +
  geom_bar(stat = "identity",
           fill = "darkgoldenrod2",
           width = c(.5)) +
  ggtitle("2017 Bar Chart")


# save session data
save.image("~/Desktop/Data Journalism/Data Visualization/Project/whale_entanglements.RData")