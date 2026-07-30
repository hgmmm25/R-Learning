import pandas as pd

# 讀取資料
storm = pd.read_csv("hurricanes.csv")

# -------------------------------------------------------------------
# 1. 取得每年風速（wind）最大的一筆資料
# (先按 wind 降冪排序，再按 year 分組取每組第一筆)
# -------------------------------------------------------------------
res1 = (
    storm.sort_values("wind", ascending=False)
    .groupby("year")
    .head(1)
    .reset_index(drop=True)
)

# -------------------------------------------------------------------
# 2. 篩選 2000 ~ 2010 年，並取得每年風速最小的一筆資料
# (with_ties = FALSE 代表同最小值時只取一筆，可用 head(1) 或 idxmin 實現)
# -------------------------------------------------------------------
res2 = (
    storm[(storm["year"] >= 2000) & (storm["year"] <= 2010)]
    .sort_values("wind", ascending=True)
    .groupby("year")
    .head(1)
    .reset_index(drop=True)
)

# -------------------------------------------------------------------
# 3. 統計 2010 ~ 2020 年間，每年的風暴總筆數
# -------------------------------------------------------------------
res3 = (
    storm[(storm["year"] >= 2010) & (storm["year"] <= 2020)]
    .groupby("year")
    .size()
    .reset_index(name="hurricanes")
)