library(testthat)

.Random.seed <<- .ext.seed

test_that("|.rle", {
    y <- structure(list(lengths = c(1L, 2L, 2L, 2L, 3L), values = c(FALSE, TRUE, FALSE, TRUE, FALSE)), class = "rle")
    x <- structure(list(lengths = c(2L, 1L, 1L, 2L, 1L, 2L, 1L), values = c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)), 
        class = "rle")
    expect_equal(statnet.common:::`|.rle`(e1 = x, e2 = y), structure(list(lengths = c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L), 
        values = c(FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE)), class = "rle"))
})
