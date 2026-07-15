import pandas as pd

# 1. 讀取 csv 檔案
votes = pd.read_csv("vote.csv")

# 2. 檢視資料
# Python 沒有完全對應 R Studio 'View()' 的內建視窗，
# 在終端機通常直接使用 print()，在 Jupyter Notebook 則可以直接輸入 votes 檢視表格
print(votes)

# 3. 計算總投票人數
# 將 'poll'、'mail'、'network' 三個欄位的所有數值全部加總
total = votes["poll"].sum() + votes["mail"].sum() + votes["network"].sum()
print(f"The number of voters are {total}")

# 4. 計算個人總得票數
votes["total"] = votes["poll"] + votes["mail"] + votes["network"]

# 5. 輸出成新的 csv 檔案
votes.to_csv("totalpy.csv", index=False)