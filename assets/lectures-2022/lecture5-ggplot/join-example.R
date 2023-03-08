library(dplyr)

band_members
band_instruments

band_members %>%
  left_join(band_instruments)

band_members %>%
  full_join(band_instruments)


band_instruments2

band_members %>%
  left_join(band_instruments2, by=c("name" = "artist"))

