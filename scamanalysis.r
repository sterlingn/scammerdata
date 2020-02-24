library(tidyverse)


# First we will look at the Ohio fraud data. Here is a briefing on the set


Ohiofraud <- read.csv("E:/Academics/DateAset_Blog/NovemberPost/consumer_sentinel_data_book_2019_data/State MSA Fraud and Other data/Ohio.csv")

Ohiofraud[20,]#Metropolitan Areas are defined by the Office of Management and Budget, and population estimates are based on 2018 U.S. Census figures. Metropolitan Areas are ranked based on the number of reports per 100,000 population.  Reports exclude state-specific data contributor reports.

# One thing to point out before I shave off a few other bits of information is that
# the column which = X is "Metropolitan Area Reports per 100K Population"
# the column Metropolitans Areas... will be condensed to Metro Area

Ohiofraud[2,]

Ohiofraud <- Ohiofraud[3:18,]#rows 3 through 18

Ohiofraud <- Ohiofraud %>%
  rename(metro_area=Metropolitan.Areas..Fraud.and.Other.Reports)

Ohiofraud[,1]

View(Ohiofraud)

#Which cities have the highest number of incidents?


Ohiofraud[1:3,] %>%
  arrange(desc(X))
  
# Cleveland with 714, Columbus with 705, and Dayton with 621

# Where's my home town? Where's the nasty Nati?

Ohiofraud %>%
  filter(metro_area== "Cinci")


