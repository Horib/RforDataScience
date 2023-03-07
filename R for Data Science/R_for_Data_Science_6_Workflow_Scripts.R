library(dplyr)
library(nycflights13)

not_cancelled2 <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))

not_cancelled2 %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay))
