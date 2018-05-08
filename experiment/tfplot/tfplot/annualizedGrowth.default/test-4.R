library(testthat)

.Random.seed <<- .ext.seed

test_that("annualizedGrowth.default", {
    ts <- stats::ts
    expect_equal(tfplot:::annualizedGrowth.default(obj = ts(1:5)), structure(c(100, 50, 33.3333333333333, 25), .Tsp = c(2, 
        5, 1), class = "ts", seriesNames = "Annual Growth of Series 1"))
})
