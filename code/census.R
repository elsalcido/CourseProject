## Install the tidycensus package if you haven't yet
#install.packages("tidycensus")

library(tidycensus)
library(ggplot2)
## setup cenus api key
## signup your census api key at http://api.census.gov/data/key_signup.html
#census_api_key("e769a44b35247c93d0cc7065ea6d1732b3181c37", install=TRUE) # 
losangeles_tract_medhhinc <- get_acs(geography = "tract", 
                                   year = 2016, # 2012-2016
                                   variables = "B19013_001",  # Median Household Income in the Past 12 Months
                                   state = "CA", 
                                   county = c("Los Angeles", "Orange", "Riverside", "San Bernardino"),
                                   geometry = TRUE) # load geometry/gis info

ggplot(losangeles_tract_medhhinc) + 
  geom_sf(aes(fill = estimate)) +
  coord_sf(datum = NA) + theme_minimal()

library(sf)
library(mapview)
library(dplyr)

mapview(losangeles_tract_medhhinc %>% select(estimate), 
        col.regions = sf.colors(10), alpha = 0.1)