import numpy as np
import pandas as pd

# 批次讀取 Q1~Q4，自動加入 quarter 欄位並合併成一張資料表
dfs = [
    pd.read_csv(f"Q{i}.csv").assign(quarter=f"Q{i}")
    for i in range(1, 5)
]
sales_all = pd.concat(dfs, ignore_index=True)

# 定義高價值用戶
sales_all['value'] = np.where(sales_all['sale_amount'] >= 100, "高价值", "普通")