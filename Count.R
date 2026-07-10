#用戶輸入個人票數
mario <- as.integer(readline("Enter votes for Mario:"))
luigi <- as.integer(readline("Enter votes for Luigi:"))
toad <- as.integer(readline("Enter votes for Toad:"))
#加總
total <- mario + luigi + toad
print(paste0("The number of voters are ", total))
#加總2
total1 <- sum(mario, luigi, toad)
print(paste0(total1, " voters are willing to hear the election results."))
