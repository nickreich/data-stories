## reproducing CO2 plot

library(readr)
library(ggplot2)

dat <- read_csv("assets/data/co2emissions.csv")

dat$Type <- factor(dat$Type,
                   levels=c( "Urban Gasoline",
                             "Rural Gasoline",
                             "Urban Diesel",
                             "Rural Diesel"))

dat %>%
  arrange(Type) %>%
  ggplot(aes(y=CO2, x=Year, fill=Type, shape=Type)) +
  geom_point(size=6) +
  scale_fill_manual(name=NULL, values = c('#16007f','#6ea0f5','#ff0015', '#ff9900')) +
  scale_shape_manual(name=NULL, values = c(24,21,24,21))+
  theme_bw() +
  theme(panel.grid.major = element_line(color = "black",
                                        size=0.5,
                                        linetype=2),
        panel.grid.minor = element_blank(),
        legend.position = "bottom") +
  scale_y_continuous(name=bquote(CO[2]~~(Mt)),
                     breaks=seq(0, 800, by=200),
                     limits = range(dat$CO2)) +
  scale_x_continuous(name=NULL,
                     breaks = seq(1980,2012, by=4))
