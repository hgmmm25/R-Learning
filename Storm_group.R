storm <- read.csv("hurricanes.csv")
storm |>
  group_by(year) |>
  arrange(desc(wind)) |>
  slice_head()
storm |>
  group_by(year) |>
  slice_min(order_by = wind, with_ties = FALSE) |>
  filter(year >= 2000 & year <= 2010) |>
  ungroup()
storm |>
  group_by(year) |>
  filter(year >= 2010 & year <= 2020) |>
  summarise(hurricanes = n())
