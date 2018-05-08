library(testthat)

.Random.seed <<- .ext.seed

test_that("!.rle", {
    x <- structure(list(lengths = c(2L, 1L, 1L, 2L, 1L, 2L, 1L), values = c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)), 
        class = "rle")
    expect_equal(statnet.common:::`!.rle`(x = x), structure(list(lengths = c(2L, 1L, 1L, 2L, 1L, 2L, 1L), values = c(TRUE, 
        FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)), class = "rle"))
})
