#直接記零
get_votes <- function(prompt = "Enter Votes:") {
  votes <- suppressWarnings(as.integer(readline(prompt)))
  ifelse(is.na(votes), 0, votes)
}
#强制用戶重新輸入
get_votes_retry <- function(prompt = "Enter Votes:") {
  repeat {
    votes <- suppressWarnings(as.integer(readline(prompt)))
    if (!is.na(votes)) {
      return(votes)
    } else {
      cat("Invalid Value!\n")
      next
    }
  }
}
#用戶輸入個人票數
mario <- get_votes_retry("Enter votes for Mario:")
luigi <- get_votes_retry("Enter votes for Luigi:")
toad <- get_votes_retry("Enter votes for Toad:")
#SUM函数加總
total1 <- sum(mario, luigi, toad)
print(paste0(total1, " voters are willing to hear the election results."))
#使用Loop获取票数
total2 <- 0
for (i in c("Peach", "Bowser")) {
  voters_num <- get_votes_retry(print(paste("Enter votes for", i, ":")))
  total2 <- total2 + voters_num
}
print(paste0("The number of 2nd voters are ", total2))
