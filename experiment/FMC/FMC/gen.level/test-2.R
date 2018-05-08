library(testthat)

.Random.seed <<- .ext.seed

test_that("gen.level", {
    y <- 2
    expect_equal(FMC:::gen.level(x = y), structure(c(-1L, 1L), .Dim = c(2L, 1L)))
})
