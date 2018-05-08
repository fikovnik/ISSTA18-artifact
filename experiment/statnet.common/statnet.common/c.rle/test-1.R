library(testthat)

.Random.seed <<- .ext.seed

test_that("c.rle", {
    y <- structure(list(lengths = c(1L, 2L, 2L, 2L, 3L), values = c(FALSE, TRUE, FALSE, TRUE, FALSE)), class = "rle")
    x <- structure(list(lengths = c(2L, 1L, 1L, 2L, 1L, 2L, 1L), values = c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)), 
        class = "rle")
    expect_equal(statnet.common:::c.rle(x, y), structure(list(lengths = c(2L, 1L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 2L, 3L), 
        values = c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE)), class = "rle"))
})
