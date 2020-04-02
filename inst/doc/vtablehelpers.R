## -----------------------------------------------------------------------------
library(vtable)
#Some random normal data, and its percentiles
d <- rnorm(1000)
pc <- pctile(d)

#25th, 50th, 75th percentile
pc[c(25,50,75)]

## -----------------------------------------------------------------------------
#Inverse normal CDF with 100 points of articulation
plot(pc)

## ---- eval = FALSE------------------------------------------------------------
#  independence.test(x,y,
#                    factor.test = NA,
#                    numeric.test = NA,
#                    star.cutoffs = c(.01,.05,.1),
#                    star.markers = c('***','**','*'),
#                    digits = 3,
#                    fixed.digits = FALSE,
#                    format = '{name}={stat}{stars}',
#                    opts = list())

## -----------------------------------------------------------------------------
data(iris)
independence.test(iris$Species,
                  iris$Sepal.Length,
                  star.cutoffs = c(.05,.01,.001))

## -----------------------------------------------------------------------------
independence.test(iris$Species,
                  iris$Sepal.Width,
                  digits=1)

## -----------------------------------------------------------------------------
independence.test(iris$Species,
                  iris$Sepal.Width,
                  digits=4,
                  fixed.digits = TRUE)

## -----------------------------------------------------------------------------
independence.test(iris$Species,
                  iris$Sepal.Width,
                  format = 'Pr(>{name}): {pval}{stars}')
