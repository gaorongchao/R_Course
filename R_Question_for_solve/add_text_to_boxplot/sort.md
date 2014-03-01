# ≈≈–Ú mtcars

```r
stats = boxplot(mpg ~ cyl, data = mtcars)$stats
colnames(stats) = boxplot(mpg ~ cyl, data = mtcars)$names
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-11.png) 

```r
rownames(stats) = c("lower", "one_quarter", "median", "three_quarters", "upper")
stats = as.data.frame(t(stats))
stats1 = stats[order(stats$median), ]
stats1$order = 1:3
rownames(stats1)
```

```
## [1] "8" "6" "4"
```

```r
for (i in 1:3) {
    mtcars$paixu[mtcars$cyl == rownames(stats1)[i]] = i
}
boxplot(mpg ~ paixu, data = mtcars, xaxt = "n")
axis(side = 1, at = 1:3, labels = rownames(stats1))
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-12.png) 

```r
text
```

```
## function (x, ...) 
## UseMethod("text")
## <bytecode: 0x0000000007a391c0>
## <environment: namespace:graphics>
```

