import pandas as pd

# 1. 讀取 CSV 檔案
students = pd.read_csv("students.csv")

# 2. 將長資料轉為寬資料 (對應 pivot_wider)
tidy_students = students.pivot(
    index="student", columns="attribute", values="value"
).reset_index()

# 移除欄位軸的名稱（非必要，但能讓 DataFrame 格式更乾淨）
tidy_students.columns.name = None

# 3. 將 GPA 欄位轉換為數值型態 (對應 as.numeric)
tidy_students["GPA"] = pd.to_numeric(tidy_students["GPA"])

# 4. 依 major 分組並計算 GPA 的平均值 (對應 group_by 與 summarise)
result = tidy_students.groupby("major", as_index=False)["GPA"].mean()

print(result)