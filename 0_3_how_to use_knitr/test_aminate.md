
```r
library(animation)
## set some options first
oopt = ani.options(interval = 1, nmax = 10)
## use a loop to create images one by one
for (i in 1:ani.options("nmax")) {
    plot(rnorm(30))
    ani.pause()  ## pause for a while ('interval')
}
```

<video   controls="controls" loop="loop"><source src="figure/none.ogg" />video of chunk none</video>

```r
## restore the options
ani.options(oopt)
```



```r
par(mar = rep(3, 4))
for (i in seq(pi/2, -4/3 * pi, length = 12)) {
    plot(0, 0, pch = 20, ann = FALSE, axes = FALSE)
    arrows(0, 0, cos(i), sin(i))
    axis(1, 0, "VI")
    axis(2, 0, "IX")
    axis(3, 0, "XII")
    axis(4, 0, "III")
    box()
}
```

<video   controls="controls" loop="loop"><source src="figure/clock.ogg" />video of chunk clock</video>



```r
par(mar = rep(3, 4))
for (i in seq(pi/2, -4/3 * pi, length = 12)) {
    plot(0, 0, pch = 20, ann = FALSE, axes = FALSE)
    arrows(0, 0, cos(i), sin(i))
    axis(1, 0, "VI")
    axis(2, 0, "IX")
    axis(3, 0, "XII")
    axis(4, 0, "III")
    box()
}
```

<video   controls="controls" loop="loop"><source src="figure/two.ogg" />video of chunk two</video>
