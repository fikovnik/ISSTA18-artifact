library(testthat)

.Random.seed <<- .ext.seed

test_that("ES.w1", {
    P1 <- c(0.375, 0.208333333333333, 0.208333333333333, 0.208333333333333)
    P0 <- c(0.25, 0.25, 0.25, 0.25)
    expect_equal(pwr:::ES.w1(P0 = P0, P1 = P1), 0.288675134594813)
})
