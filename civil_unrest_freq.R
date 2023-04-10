library(ggplot2)

# 將年代分成五年區間
civil.unrest$year_group <- cut(civil.unrest$年代, 
                               breaks = seq(from = 1680, to = 1890, by = 5), 
                               include.lowest = TRUE, 
                               right = FALSE)

# 計算每五年區間內民變事件的數量
count_by_year_group <- as.data.frame(table(civil.unrest$year_group))

# 生成柱狀圖
ggplot(count_by_year_group, aes(x = Var1, y = Freq)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(x = "Year (in 5-year intervals)", y = "Number of Civil Unrest Events", 
       title = "Civil Unrest Event Frequency in Taiwan (1684 - 1890)")
