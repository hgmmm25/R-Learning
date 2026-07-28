library(tidyverse)

# 批次讀取 Q1~Q4，自動加入 quarter 欄位並合併成一張資料表
sales_all <- map_dfr(1:4, \(i) {
  q_name <- paste0("Q", i)
  read.csv(paste0(q_name, ".csv")) %>%
    mutate(quarter = q_name)
})
#定义高价值用户
sales_all$value <- ifelse(sales_all$sale_amount >= 100, "高价值", "普通")
