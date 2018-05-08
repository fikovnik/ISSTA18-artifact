library(testthat)

.Random.seed <<- .ext.seed

test_that("compact.rle", {
    y <- structure(list(lengths = c(1L, 2L, 2L, 2L, 3L), values = c(FALSE, TRUE, FALSE, TRUE, FALSE)), class = "rle")
    x <- structure(list(lengths = c(2L, 1L, 1L, 2L, 1L, 2L, 1L), values = c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)), 
        class = "rle")
    expect_equal(statnet.common:::compact.rle(x = x & y), structure(list(lengths = c(2L, 1L, 2L, 1L, 4L), values = c(FALSE, 
        TRUE, FALSE, TRUE, FALSE)), class = "rle"))
})
