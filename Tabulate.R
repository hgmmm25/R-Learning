#讀取csv檔案
votes <- read.csv("vote.csv")
#equals
votes <- read.table(
  "vote.csv",
  sep = ",",
  header = TRUE,
  fill = TRUE
)
View(votes)
#計算縂投票人數
total <- sum(votes$poll, votes$mail, votes$network)
print(paste0("The number of voters are ", total))
#計算個人縂得票數
votes$total <- votes$poll + votes$mail + votes$network
write.csv(votes, "total.csv", row.names = FALSE)
