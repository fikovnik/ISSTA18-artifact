library(testthat)

.Random.seed <<- .ext.seed

test_that(">.rle", {
    y <- structure(list(lengths = c(3L, 1L, 1L, 1L, 4L), values = c(1, -1, 1, -1, 1)), class = "rle")
    x <- structure(list(lengths = c(3L, 1L, 1L, 2L, 1L, 1L, 1L), values = c(-1, 1, -1, 1, -1, 1, -1)), class = "rle")
    expect_equal(statnet.common:::`>.rle`(e1 = x, e2 = y), structure(list(lengths = c(3L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), values = c(FALSE, 
        TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE)), class = "rle"))
})
