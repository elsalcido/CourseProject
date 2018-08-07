library(readxl)
Hawthorne_daily_bike_counts_073118 <- read_excel("data/Hawthorne Tilikum Steel daily bike counts 073118.xlsx", 
                                                       sheet = "Hawthorne", skip = 1)
Tilikum_daily_bike_counts_073118 <- read_excel("data/Hawthorne Tilikum Steel daily bike counts 073118.xlsx", 
                                                 sheet = "Tilikum", skip = 1)
Steel_daily_bike_counts_073118 <- read_excel("data/Hawthorne Tilikum Steel daily bike counts 073118.xlsx", 
                                                 sheet = "Steel", skip = 1)