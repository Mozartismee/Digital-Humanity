


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
1  1747   1.614167
2  1748   1.664861
3  1749   1.649514
4  1751   1.591250
5  1752   1.694583
6  1753   1.752232
7  1754   1.996131
8  1755   1.924960
9  1756   1.531567
10 1763   1.499807
11 1764   1.597990
12 1765   1.587146
13 1767   1.561222
14 1774   1.536861
15 1777   1.518750
16 1778   1.491667
