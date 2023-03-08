library(spotifyr)
library(tidyverse)
library(lubridate)
library(ggridges)

Sys.setenv(SPOTIFY_CLIENT_ID = '6cb1ccd66fef44e082064ee3c74cd56d')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '0b1880256d454fff87772a6682e61d5e')

access_token <- get_spotify_access_token()

beatles <- get_artist_audio_features('the beatles')

ts <- get_artist_audio_features('taylor swift')

ninas <- get_artist_audio_features('nina simone')

luisf <- get_artist_audio_features('luis fonsi')

dan_bern <- get_artist_audio_features('dan bern')

ajr <- get_artist_audio_features('ajr')



beatles <- beatles %>%
  mutate(album_name_fct = reorder(album_name, X = album_release_year))

ggplot(ajr, aes(x = valence, y = album_name)) +
  geom_density_ridges() +
  theme_ridges() +
  ggtitle("Ridges of AJR Division's joy distributions", subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

ggplot(beatles, aes(x = valence, y = album_name_fct)) +
  geom_density_ridges() +
  theme_ridges() +
  ggtitle("Joyplot of Beatles's joy distributions", subtitle = "Based on valence pulled from Spotify's Web API with spotifyr") +
  ylab(NULL)


beatles %>%
  count(key_mode, sort = TRUE) %>%
  head(5)

get_my_recently_played(limit = 5) %>%
  mutate(artist.name = map_chr(track.artists, function(x) x$name[1]),
         played_at = as_datetime(played_at)) %>%
  select(track.name, artist.name, track.album.name, played_at)
