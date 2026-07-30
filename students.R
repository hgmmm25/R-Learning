students <- read.csv("students.csv")
tidy_students <- pivot_wider(
  students,
  id_cols = student,
  names_from = attribute,
  values_from = value
)
tidy_students$GPA <- as.numeric(tidy_students$GPA)
tidy_students |>
  group_by(major) |>
  summarise(GPA = mean(GPA))
