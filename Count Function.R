get_votes <- function(prompt = "Enter Votes:") {
  votes <- suppressWarnings(as.integer(readline(prompt)))
  ifelse(is.na(votes), 0, votes)
}
#用戶輸入個人票數
mario <- get_votes("Enter votes for Mario:")
luigi <- get_votes("Enter votes for Luigi:")
toad <- get_votes("Enter votes for Toad:")
#加總
total <- mario + luigi + toad
print(paste0("The number of voters are ", total))
#加總2
total1 <- sum(mario, luigi, toad)
print(paste0(total1, " voters are willing to hear the election results."))
