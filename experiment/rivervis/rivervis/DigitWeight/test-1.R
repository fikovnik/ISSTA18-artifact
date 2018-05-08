library(testthat)

.Random.seed <<- .ext.seed

test_that("DigitWeight", {
    DIGITMAX <- 2
    expect_equal(rivervis:::DigitWeight(DIGITMAX = DIGITMAX), structure(c(1e+08, 1e+07), .Dim = c(2L, 1L)))
})
