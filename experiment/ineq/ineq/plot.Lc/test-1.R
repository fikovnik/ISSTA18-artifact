library(testthat)

.Random.seed <<- .ext.seed

test_that("plot.Lc", {
    x <- c(5.55555555555556, 5.55555555555556, 5.55555555555556, 5.55555555555556, 5.55555555555556, 5.55555555555556, 5.55555555555556, 
        5.55555555555556, 5.55555555555556, 50)
    Lc <- ineq::Lc
    expect_equal(ineq:::plot.Lc(x = Lc(x)), NULL)
})
