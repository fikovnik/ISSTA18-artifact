library(testthat)

.Random.seed <<- .ext.seed

test_that("factorize.factor", {
    f <- structure(1:6, .Label = c("1", "2", "3", "4", "5", "6"), class = "factor")
    expect_equal(conf.design:::factorize.factor(x = f), structure(list(fa = structure(c(1L, 2L, 1L, 2L, 1L, 2L), .Label = c("0", 
        "1"), class = "factor"), fb = structure(c(1L, 1L, 2L, 2L, 3L, 3L), .Label = c("0", "1", "2"), class = "factor")), 
        row.names = c("1", "2", "3", "4", "5", "6"), class = "data.frame"))
})
