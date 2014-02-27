
```r
library(reshape)
```

```
## Loading required package: plyr
## 
## Attaching package: 'reshape'
## 
## ÏÂÁÐ¶ÔÏó±»ÆÁ±ÎÁËfrom 'package:plyr':
## 
##     rename, round_any
```

```r
data.FZY = read.table("a.csv", sep = ",", header = TRUE)
data.RenShu = read.table("b.csv", sep = ",", header = TRUE)
names_city = names(data.RenShu)
data.FZY2011 = subset(data.FZY, Äê·Ý == 2011)
for (i in 3:length(names_city)) {
    name = names_city[i]
    data.FZY2011[, name] = data.FZY2011[, name]/data.RenShu[1, name]
}
data.FZY2011_1 = melt(data.FZY2011, id = c("X", "ÔÂ·Ý", "Äê·Ý", "×°ÒÆ»úÇé¿ö"))
value = boxplot(value ~ variable, data = data.FZY2011_1, varwidth = TRUE, notch = TRUE, 
    col = rainbow(16))$stats
```

```
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<85>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<a8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<e7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<9c>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<81>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<85>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<a8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<e7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<9c>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å…¨çœ'³ö´í£º<81>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—äº¬'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—äº¬'³ö´í£º<8d>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—äº¬'³ö´í£º<97>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—äº¬'³ö´í£º<e4>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—äº¬'³ö´í£º<ba>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—äº¬'³ö´í£º<ac>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<97>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<a0>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<e9>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<94>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<a1>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<97>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<a0>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<e9>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<94>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ— é”¡'³ö´í£º<a1>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'é•‡æ±Ÿ'³ö´í£º<e9>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'é•‡æ±Ÿ'³ö´í£º<95>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'é•‡æ±Ÿ'³ö´í£º<87>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'é•‡æ±Ÿ'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'é•‡æ±Ÿ'³ö´í£º<b1>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'é•‡æ±Ÿ'³ö´í£º<9f>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<e8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<8b>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<8f>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<e8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<8b>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<8f>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è‹å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—é€<U+393C><U+3E61>'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—é€<U+393C><U+3E61>'³ö´í£º<8d>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—é€<U+393C><U+3E61>'³ö´í£º<97>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—é€<U+393C><U+3E61>'³ö´í£º<e9>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—é€<U+393C><U+3E61>'³ö´í£º<80>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å—é€<U+393C><U+3E61>'³ö´í£º<9a>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<89>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<ac>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<89>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<ac>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ‰¬å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'ç›åŸŽ'³ö´í£º<e7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'ç›åŸŽ'³ö´í£º<9b>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'ç›åŸŽ'³ö´í£º<90>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'ç›åŸŽ'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'ç›åŸŽ'³ö´í£º<9f>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'ç›åŸŽ'³ö´í£º<8e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<be>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<90>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<be>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<90>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¾å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ·®å®‰'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ·®å®‰'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ·®å®‰'³ö´í£º<ae>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ·®å®‰'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ·®å®‰'³ö´í£º<ae>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ·®å®‰'³ö´í£º<89>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<e8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<bf>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<e4>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<ba>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<91>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<b8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<af>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<e8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<bf>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<e4>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<ba>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<91>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<b8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'è¿žäº‘æ¸õ<U+3E66>'³ö´í£º<af>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¸¸å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¸¸å·ž'³ö´í£º<b8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¸¸å·ž'³ö´í£º<b8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¸¸å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¸¸å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å¸¸å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<b3>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<b0>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<e6>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<b3>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<b0>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<b7>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'æ³°å·ž'³ö´í£º<9e>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å®¿è¿'³ö´í£º<e5>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å®¿è¿'³ö´í£º<ae>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å®¿è¿'³ö´í£º<bf>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å®¿è¿'³ö´í£º<e8>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å®¿è¿'³ö´í£º<bf>´úÌæÁËdot
## Warning: 'mbcsToSbcs'Àï×ª»»'å®¿è¿'³ö´í£º<81>´úÌæÁËdot
```

```r
text(1:14, t(value), sprintf("%.2f", t(value)))
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 

