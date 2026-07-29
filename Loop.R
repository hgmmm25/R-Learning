i <- 3
repeat {
  if (i == 0) {
    break
  } else {
    print("Quack!")
    i <- i - 1
    next
  }
}
o <- 1
while (o <= 5) {
  cat("Moo!\n")
  o <- o + 1
}
for (p in 1:4) {
  cat("Meow!\n")
}
