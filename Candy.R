library(tidyverse)
library(ggthemes)
load("candy.RData")
ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
) +
  geom_jitter(
    shape = 21,
    color = "darkorchid",
    fill = "black",
    size = 2
  ) +
  labs(
    x = "Sugar",
    y = "Price",
    title = "Price & Sugar"
  ) +
  theme_excel_new()
