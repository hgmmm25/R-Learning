import pandas as pd

# 讀取 & 清洗資料
chicks = pd.read_csv("chicks.csv")
chicks = chicks.dropna(subset=["weight"])
feed_options = chicks["feed"].unique()

# 印出選項選單
for i, option in enumerate(feed_options, start=1):
    print(f"{i}. {option}")

# 使用者選擇（避免使用 input 作為變數名稱，以免覆蓋 Python 內建函式）
user_input = input("Please Choose one option: ")

# 嘗試將字串轉為整數並驗證範圍
try:
    feed_choice = int(user_input)
    # 判斷輸入是否超出選單範圍（注意 Python 索引為 0-based，因此選單顯示 1~N，對應索引為 feed_choice - 1）
    if 1 <= feed_choice <= len(feed_options):
        selected_choice = feed_options[feed_choice - 1]
        print(chicks[chicks["feed"] == selected_choice])
    else:
        print("輸入非法")
except ValueError:
    print("輸入非法")