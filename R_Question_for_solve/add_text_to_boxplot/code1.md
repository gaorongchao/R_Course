
```r
library(reshape)
```

```
## Loading required package: plyr
## 
## Attaching package: 'reshape'
## 
## 下列对象被屏蔽了from 'package:plyr':
## 
##     rename, round_any
```

```r
data.FZY = read.table("a.csv", sep = ",", header = TRUE)
data.RenShu = read.table("b.csv", sep = ",", header = TRUE)
names_city = names(data.RenShu)
data.FZY2011 = subset(data.FZY, 年份 == 2011)
for (i in 3:length(names_city)) {
    name = names_city[i]
    data.FZY2011[, name] = data.FZY2011[, name]/data.RenShu[1, name]
}
data.FZY2011_1 = melt(data.FZY2011, id = c("X", "月份", "年份", "装移机情况"))
value = boxplot(value ~ variable, data = data.FZY2011_1, varwidth = TRUE, notch = TRUE, 
    col = rainbow(16))$stats
text(1:14, t(value), sprintf("%.2f", t(value)))
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 

