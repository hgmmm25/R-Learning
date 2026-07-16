import numpy as np
import pandas as pd

# 1. 從 538 的 GitHub 中讀入數據
url = "https://raw.githubusercontent.com/fivethirtyeight/data/refs/heads/master/non-voters/nonvoters_data.csv"
voters = pd.read_csv(url)

# 在讀入資料後，立即進行 copy() 來重整記憶體避免效能下降
voters = voters.copy()

# 2. 展示數據
print(voters.head())

# 3. 統計被調查者總數
print(f"The number of surveyed is {len(voters)}")

# 4. 統計獨立數據，將選民分類
print(voters["voter_category"].unique())

# 5. 統計獨立數據，將未注冊投票的選民分類
print(voters["Q22"].unique())

# 6. 轉為 category 型態
print(voters["Q22"].astype("category"))

# 7. 排除特定值並賦予標籤
q21_mapping = {1: "Yes", 2: "No", 3: "Not sure/Undecided"}

voters["Q21_cleaned"] = (
    voters["Q21"].replace(-1, np.nan).map(q21_mapping).astype("category")
)

# 顯示處理後的結果
print(voters["Q21_cleaned"])