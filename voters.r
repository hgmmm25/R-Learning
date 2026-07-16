#從538的Github中讀入數據
url <- "https://raw.githubusercontent.com/fivethirtyeight/data/refs/heads/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)
#展示數據
View(voters)
#統計被調查者總數
print(paste0("The number of surveyed is ", nrow(voters)))
#統計獨立數據，將選民分類
unique(voters$voter_category)
#統計獨立數據，將未注冊投票的選民分類（可見髒數據）
#1-7為不同原因；而NA顯然為已注冊投票的選民；但-1并未説明，因而為髒數據
unique(voters$Q22)
#注意二者區別；Factor展示了數據集，并按順序排列了值
factor(voters$Q22)
#Factor可以給值按順序賦標簽,可以排除特定值（該值會變爲<NA>）
factor(
  voters$Q21,
  labels = c("Yes", "No", "Not sure/Undecided"),
  exclude = c(-1)
)
