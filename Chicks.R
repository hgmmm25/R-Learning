#读入数据
chicks <- read.csv("chicks.csv")
#显示数据
View(chicks)
#计算平均重量
chicks_avg_weight <- round(mean(chicks$weight, na.rm = TRUE), 3)
print(paste("小鸡们的平均重量为", chicks_avg_weight))
#手动（选中酪蛋白）计算平均重量
casein_chicks <- chicks[1:3, ]
casein_chicks_avg_weight <- round(mean(casein_chicks$weight, na.rm = TRUE), 3)
print(paste("以酪蛋白为食小鸡们的平均重量为", casein_chicks_avg_weight))
#自动（选中蚕豆）计算平均重量，注意同上个示例所使用数据的不同之处
fava_chicks <- chicks[chicks$feed == "fava", ] #可用替换：which(chicks$feed == "fava")
fava_chicks_avg_weight <- round(mean(fava_chicks$weight, na.rm = TRUE), 3)
print(paste("以蚕豆为食小鸡们的平均重量为", fava_chicks_avg_weight))


#在读入数据时即把NA值排除在外,注意回传值为布尔值（想得到具体的行号可用which）
chicks_NONA <- chicks[!is.na(chicks$weight), ]
#注意到行号(注意：并非鸡的编号)并不连续，可以使用函数解决这一问题，处理大数据时可节省计算时间
rownames(chicks_NONA) <- NULL
#使用Subset函数实现同样功能，因为传入参数已指定，判断中可直接使用列名，select用于选入c(,)/去除-某些列
chicks_NONA1 <- subset(chicks, !is.na(weight), select = -chick)
rownames(chicks_NONA1) <- NULL
soybean_chicks <- subset(chicks_NONA1, feed == "soybean")
#计算数据集中有多少缺失值
NA_num <- sum(is.na(chicks$weight))
print(paste("数据集中有", NA_num, "个缺失值。"))
