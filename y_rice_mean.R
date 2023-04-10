 library(zoo)
 # 將空白值替換為NA
 y.rice[y.rice == ""] <- NA
 # 轉換數據為數字
 y.rice[, 2:13] <- apply(y.rice[, 2:13], 2, function(x) as.numeric(as.character(x)))
 # 使用相鄰月份平均值填補空白值
 y.rice_filled <- y.rice
 y.rice_filled[, 2:13] <- apply(y.rice[, 2:13], 2, function(x) na.approx(x, rule = 2))
 
 y.rice.filled

 y.rice_mean <- data.frame(Year = y.rice_filled$year, Mean_Price = rowMeans(y.rice_filled[, 2:13], na.rm = TRUE))

 y.rice_mean
 
   Year Mean_Price
1  1723  0.8877273
2  1724  0.8859091
3  1725  0.9592500
4  1726  1.0325909
5  1727  1.1297955
6  1728  1.0739481
7  1729  0.9824567
8  1730  0.9308442
9  1731  0.9171861
10 1732  0.9374675
11 1733  0.9259307
12 1734  0.9175758
13 1735  0.9340909
