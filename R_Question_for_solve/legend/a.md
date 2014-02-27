# Cannot view gvisMotionChart from printed html file
无法解决不能看gvisMotionChart 生成的html文件的终极解决方法。
gvimMotionChart 问题：

```r
library(googleVis)
```

```
## 
## Welcome to googleVis version 0.4.7
## 
## Please read the Google API Terms of Use
## before you use the package:
## https://developers.google.com/terms/
## 
## Note, the plot method of googleVis will by default use
## the standard browser to display its output.
## 
## See the googleVis package vignette for more details.
## 
## To suppress the this message use:
## suppressPackageStartupMessages(library(googleVis))
```

```r
data(Fruits)
Fruits
```

```
##     Fruit Year Location Sales Expenses Profit       Date
## 1  Apples 2008     West    98       78     20 2008-12-31
## 2  Apples 2009     West   111       79     32 2009-12-31
## 3  Apples 2010     West    89       76     13 2010-12-31
## 4 Oranges 2008     East    96       81     15 2008-12-31
## 5 Bananas 2008     East    85       76      9 2008-12-31
## 6 Oranges 2009     East    93       80     13 2009-12-31
## 7 Bananas 2009     East    94       78     16 2009-12-31
## 8 Oranges 2010     East    98       91      7 2010-12-31
## 9 Bananas 2010     East    81       71     10 2010-12-31
```

```r
M = gvisMotionChart(Fruits, idvar = "Fruit", timevar = "Year")
str(M)
```

```
## List of 3
##  $ type   : chr "MotionChart"
##  $ chartid: chr "MotionChartID54dc1c0655cd"
##  $ html   :List of 4
##   ..$ header : chr "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xml"| __truncated__
##   ..$ chart  : Named chr [1:7] "<!-- MotionChart generated in R 3.0.2 by googleVis 0.4.7 package -->\n<!-- Fri Feb 21 23:08:05 2014 -->\n\n\n<!-- jsHeader -->\"| __truncated__ "\n// jsData \nfunction gvisDataMotionChartID54dc1c0655cd () {\nvar data = new google.visualization.DataTable();\nvar datajson ="| __truncated__ "\n// jsDrawChart\nfunction drawChartMotionChartID54dc1c0655cd() {\nvar data = gvisDataMotionChartID54dc1c0655cd();\nvar options"| __truncated__ "\n// jsDisplayChart\n(function() {\nvar pkgs = window.__gvisPackages = window.__gvisPackages || [];\nvar callbacks = window.__g"| __truncated__ ...
##   .. ..- attr(*, "names")= chr [1:7] "jsHeader" "jsData" "jsDrawChart" "jsDisplayChart" ...
##   ..$ caption: chr "<div><span>Data: Fruits &#8226; Chart ID: <a href=\"Chart_MotionChartID54dc1c0655cd.html\">MotionChartID54dc1c0655cd</a></span>"| __truncated__
##   ..$ footer : chr "\n<!-- htmlFooter -->\n<span> \n  R version 3.0.2 (2013-09-25) &#8226; <a href=\"http://code.google.com/p/google-motion-charts-"| __truncated__
##  - attr(*, "class")= chr [1:2] "gvis" "list"
```

```r
M$type
```

```
## [1] "MotionChart"
```

```r
M$chartid
```

```
## [1] "MotionChartID54dc1c0655cd"
```

```r
print(M, tag = "header")
```

```
## <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
##   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
## <html xmlns="http://www.w3.org/1999/xhtml">
## <head>
## <title>MotionChartID54dc1c0655cd</title>
## <meta http-equiv="content-type" content="text/html;charset=utf-8" />
## <style type="text/css">
## body {
##   color: #444444;
##   font-family: Arial,Helvetica,sans-serif;
##   font-size: 75%;
##   }
##   a {
##   color: #4D87C7;
##   text-decoration: none;
## }
## </style>
## </head>
## <body>
```

```r
print(M, file = "my.html")
```

上面的意思是：这个问题是应为flash的安全设置引起的，
所以我们要设置一下，
具体要设置三个方面：
第一：全局存储设置：选择不在询问 
第二：全局安全设置：选择 始终允许 
第三：web站点存储设置：选择 不再询问。 
设置好以后，重新打开html文件。
