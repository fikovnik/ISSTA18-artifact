library(testthat)

.Random.seed <<- .ext.seed

test_that("genComp", {
    expect_equal(multicool:::genComp(n = 6, len = 3, addZeros = TRUE), list(c(1, 1, 4), c(1, 2, 3), c(1, 5, 0), c(2, 2, 2), 
        c(2, 4, 0), c(3, 3, 0), c(6, 0, 0)))
})
