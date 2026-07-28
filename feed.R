#读取&清洗数据
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))
feed_options <- unique(chicks$feed)

formatted_options <- paste0(1:length(feed_options), ". ", feed_options)
cat(formatted_options, sep = "\n")
#用户选择
input <- readline("Please Choose one option: ")
# 嘗試將字串轉為整數（使用 suppressWarnings 隱藏轉型失敗時的警告訊息）
feed_choice <- suppressWarnings(as.integer(input))
# 判斷輸入是否非法：是否為 NA，或者是否超出選單範圍
if (
    is.na(feed_choice) || feed_choice < 1 || feed_choice > length(feed_options)
) {
    cat("輸入非法\n")
} else {
    selected_choice <- feed_options[feed_choice]
    print(subset(chicks, feed == selected_choice))
}
