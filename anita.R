library(tidyverse)
library(ggthemes)
load("anita.RData")
ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_line(
    linetype = 2,
    linewidth = 0.8
  ) +
  geom_point(
    color = "blue",
    size = 2
  ) +
  geom_hline(
    linetype = 3,
    yintercept = 65
  ) +
  labs(
    x = "Time",
    y = "Wind",
    title = "Anita"
  ) +
  theme_solarized()
