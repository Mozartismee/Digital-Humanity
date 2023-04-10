


library(zoo)
# 將空白值替換為NA
q.rice[q.rice == ""] <- NA
# 轉換數據為數字
q.rice[, 2:13] <- apply(q.rice[, 2:13], 2, function(x) as.numeric(as.character(x)))
# 使用相鄰月份平均值填補空白值
q.rice_filled <- q.rice
q.rice_filled[, 2:13] <- apply(q.rice[, 2:13], 2, function(x) na.approx(x, rule = 2))
q.rice_mean <- data.frame(Year = q.rice_filled$year, Mean_Price = rowMeans(q.rice_filled[, 2:13], na.rm = TRUE))

q.rice_mean

     Year Mean_Price
1747   NA   1.620000
1748 1.55   1.675303
1749   NA   1.667652
1751 1.35   1.613182
1752 1.25   1.735000
1753   NA   1.792045
1754   NA   2.052273
1755   NA   1.968788
1756   NA   1.533788
1763   NA   1.493295
1764   NA   1.594561
1765 1.70   1.576886
1767   NA   1.548606
1774   NA   1.522030
1777   NA   1.502273
1778   NA   1.472727
