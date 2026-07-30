import pandas as pd

# 讀取 csv 檔案，將第一欄作為索引列 (Row name)
votes = pd.read_csv("vote.csv", index_col=0)
total_votes = 0

# 使用 Loop 讀取並相加 (加總全體票數)
for candidate in votes.index:
    votes_num = votes.loc[candidate].sum()
    total_votes += votes_num

each_votes = {}
# 使用 Loop 讀取並相加（個人總票數）
for candidate in votes.index:
    votes_num = votes.loc[candidate].sum()
    each_votes[candidate] = votes_num

votes['total'] = pd.Series(each_votes)

# apply 函數實現 (MARGIN=2 相當於對欄加總，Python 對應 axis=0)
a = votes.apply(sum, axis=0)

each_votes_col = {}
# 使用 Loop 讀取並相加（投票方式）
for method in votes.columns:
    votes_num = votes[method].sum()
    each_votes_col[method] = votes_num

# 新增 Total 列
votes.loc['Total'] = pd.Series(each_votes_col)

# 對於結果排序 (由大到小)
a_sorted = a.sort_values(ascending=False)