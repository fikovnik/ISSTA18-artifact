library(testthat)

.Random.seed <<- .ext.seed

test_that("peg_sum", {
    expect_equal(piton:::peg_sum(x = "12,14,19,2"), 47)
})
