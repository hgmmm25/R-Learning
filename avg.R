avg <- function(x) {
  # 1 .檢查是否為數值型態，若不是則嘗試轉型
  if (!is.numeric(x)) {
    warning("Input is not numeric. Attempting to convert...")
    x <- suppressWarnings(as.numeric(x))

    # 轉型後若產生 NA，代表包含無法轉成數字的內容（如字串）
    if (any(is.na(x))) {
      stop("Transformation failed! Input contains non-numeric values.")
    }
  }

  # 2. 檢查空向量
  if (length(x) == 0) {
    warning("Input vector is empty.")
    return(NaN)
  }

  # 3. 計算平均值
  sum(x) / length(x)
}
