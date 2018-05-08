library(testthat)

.Random.seed <<- .ext.seed

test_that("ES.w2", {
    prob <- structure(c(0.225, 0.16, 0.125, 0.16, 0.125, 0.04, 0.125, 0.04), .Dim = c(2L, 4L))
    expect_equal(pwr:::ES.w2(P = prob), 0.255864606863951)
})
