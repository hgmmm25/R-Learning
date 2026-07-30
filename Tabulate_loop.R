#讀取csv檔案
votes <- read.csv("vote.csv", row.names = 1)
total_votes <- 0
#使用Loop读取并相加(加总)
for (candidate in rownames(votes)) {
  votes_num <- sum(votes[candidate, ])
  total_votes <- total_votes + votes_num
}
each_votes <- c()
#使用Loop读取并相加（个人）
for (candidate in rownames(votes)) {
  votes_num <- sum(votes[candidate, ])
  each_votes[candidate] <- votes_num
}
votes$total <- each_votes
#apply函數實現
a <- apply(votes, MARGIN = 2, FUN = sum)

each_votes <- c()
#使用Loop读取并相加（投票方式）
for (method in colnames(votes)) {
  votes_num <- sum(votes[, method])
  each_votes[method] <- votes_num
}
votes <- rbind(votes, "Total" = each_votes)
#對於結果排序
sort(a, decreasing = TRUE)
