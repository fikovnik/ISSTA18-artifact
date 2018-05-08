library(testthat)

.Random.seed <<- .ext.seed

test_that("gen.level", {
    expect_equal(FMC:::gen.level(x = 5), structure(c(-2, -1, 0, 1, 2), .Dim = c(5L, 1L)))
})
