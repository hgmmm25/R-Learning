import pandas as pd

# 1. 讀入數據
chicks = pd.read_csv("chicks.csv")

# 2. 顯示數據 (在 Python 中通常使用 print()，若在 Jupyter Notebook 中可直接輸入 chicks)
print(chicks.head())

# 3. 計算平均重量 (Pandas 的 mean() 預設會自動忽略 NaN，相當於 na.rm = TRUE)
chicks_avg_weight = round(chicks['weight'].mean(), 3)
print(f"小雞們的平均重量為 {chicks_avg_weight}")

# 4. 手動（選取前三行，即酪蛋白）計算平均重量
# 注意：R 的 1:3 包含第 1, 2, 3 行；Python 的 [0:3] 包含索引 0, 1, 2 的行
casein_chicks = chicks.iloc[0:3]
casein_chicks_avg_weight = round(casein_chicks['weight'].mean(), 3)
print(f"以酪蛋白為食小雞們的平均重量為 {casein_chicks_avg_weight}")

# 5. 自動（選取蠶豆）計算平均重量
fava_chicks = chicks[chicks['feed'] == "fava"]
fava_chicks_avg_weight = round(fava_chicks['weight'].mean(), 3)
print(f"以蠶豆為食小雞們的平均重量為 {fava_chicks_avg_weight}")

# --------------------------------------------------

# 6. 排除 weight 欄位為 NA 的值
chicks_NONA = chicks[chicks['weight'].notna()].copy()

# 重設索引以使其連續 (相當於 R 中的 rownames(chicks_NONA) <- NULL)
chicks_NONA = chicks_NONA.reset_index(drop=True)

chicks_NONA1 = chicks[chicks['weight'].notna()].drop(columns=['chick']).reset_index(drop=True)

# 篩選 soybean 的數據
soybean_chicks = chicks_NONA1[chicks_NONA1['feed'] == "soybean"]

# 8. 計算數據集中有多少缺失值
NA_num = chicks['weight'].isna().sum()
print(f"數據集中有 {NA_num} 個缺失值。")