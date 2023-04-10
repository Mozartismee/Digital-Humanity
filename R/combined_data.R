 library(ggplot2)
 
 # 合并两个数据框
 combined_data <- rbind(q.rice_mean, y.rice_mean)
 
 # 填充 Year 列中的 NA 值
 combined_data$Year <- zoo::na.approx(combined_data$Year)
 
 # 选择 1723 至 1778 年的数据
 selected_data <- combined_data[combined_data$Year >= 1723 & combined_data$Year <= 1778, ]
 
 # 绘制图形
 ggplot(selected_data, aes(x = Year, y = Mean_Price)) +
   geom_point() +
   geom_line() +
   labs(title = "Year vs. Price (1723-1778)", x = "Year", y = "Price") +
   scale_x_continuous(breaks = seq(1723, 1778, by = 5))
   
   
 combined_data
   Year Mean_Price
1  1747  1.6141667
2  1748  1.6648611
3  1749  1.6495139
4  1751  1.5912500
5  1752  1.6945833
6  1753  1.7522321
7  1754  1.9961310
8  1755  1.9249603
9  1756  1.5315675
10 1763  1.4998065
11 1764  1.5979901
12 1765  1.5871458
13 1767  1.5612222
14 1774  1.5368611
15 1777  1.5187500
16 1778  1.4916667
17 1723  0.8877273
18 1724  0.8859091
19 1725  0.9592500
20 1726  1.0325909
21 1727  1.1297955
22 1728  1.0739481
23 1729  0.9824567
24 1730  0.9308442
25 1731  0.9171861
26 1732  0.9374675
27 1733  0.9259307
28 1734  0.9175758
29 1735  0.9340909
