#詢問用戶姓名
a <- readline("What's your name?")
#正常函數
Greeting <- paste("Hello, ", a, sep = "")
Comment1 <- paste0(a, " is a good person.")
print(Greeting)
print(Comment1)
#嵌套函數
print(paste0("Bye, ", a))
