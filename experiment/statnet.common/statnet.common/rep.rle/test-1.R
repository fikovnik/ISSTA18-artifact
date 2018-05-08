library(testthat)

.Random.seed <<- .ext.seed

test_that("rep.rle", {
    y <- c(0L, 1L, 1L, 2L, 1L, 3L, 0L)
    x <- structure(list(lengths = c(1L, 2L, 1L, 1L, 2L, 1L, 2L), values = c(-1, 1, -1, 1, -1, 1, -1)), class = "rle")
    expect_equal(statnet.common:::rep.rle(x = x, y, scale = "run"), structure(list(lengths = c(2L, 1L, 1L, 1L, 2L, 1L, 1L, 
        1L), values = c(1, -1, 1, 1, -1, 1, 1, 1)), class = "rle"))
})
