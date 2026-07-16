#導入數據
load("temps.RData")
#縱覽數據
temps
#獲取特定數據
print(paste0("第三天的氣溫為 ", temps[3], " 華氏度。"))
#計算溫度平均值、最大/最小值
print(paste0("本月平均溫度為 ", mean(temps), " 華氏度。"))
print(paste0("本月最低溫度為 ", min(temps), " 華氏度。"))
print(paste0("本月最高溫度為 ", max(temps), " 華氏度。"))
#移除數據中的異常值(手動，需賦值)
temps[-c(2, 4, 7)]
#使用邏輯移除其中的異常值(自動)
#注意兩種表達方式的差異
filter <- -which(temps < 0 | temps > 60)
filter1 <- !(temps < 0 | temps > 60)
temps[filter]
no_outliers <- temps[filter1]
outliers <- temps[!filter1]
#數據中是否有異常值？
any(temps < 0 | temps > 60)
#書籍中是否無異常值？
all(temps > 0 & temps < 60)
#將兩項數據保存
save(no_outliers, file = "no_outliers.RData")
save(outliers, file = "outliers.RData")
