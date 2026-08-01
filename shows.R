#導入庫&讀入數據
library(tidyverse)
shows <- read.csv("shows.csv")
shows$show <- shows$show |>
    str_trim() |>
    str_squish() |>
    str_to_title()
shows |>
    group_by(show) |>
    summarise(votes = n()) |>
    ungroup() |>
    arrange(desc(votes))
str_detect(shows$show, "Avatar")
