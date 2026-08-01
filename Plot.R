#加載庫&導入數據
library(tidyverse)
library(ggthemes)
votes <- read.csv("total.csv")
p <- ggplot(votes, aes(x = candidate, y = total)) +
  geom_col(
    aes(fill = candidate),
    show.legend = FALSE
  ) +
  scale_y_continuous(limits = c(0, 450)) +
  labs(
    x = "Candidate",
    y = "Total Votes",
    title = "Election Result"
  ) +
  theme_gdocs()
ggsave(
  "Election Result.png",
  plot = p,
  width = 1500,
  height = 1500,
  units = "px"
)
