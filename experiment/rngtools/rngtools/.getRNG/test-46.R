library(testthat)

.Random.seed <<- .ext.seed

test_that(".getRNG", {
    object <- list(c(507L, -1301179724L, 1008311845L, 196117666L, -675778629L, -1944520768L, 1817388225L), c(507L, 1944626481L, 
        -506328088L, -552858451L, 1058604450L, 755586490L, -1589148516L), c(507L, 1325324145L, -486187261L, 608300974L, -104267912L, 
        -1515704855L, 1399657010L))
    expect_equal(rngtools:::.getRNG(object = object), NULL)
})
