library(testthat)

.Random.seed <<- .ext.seed

test_that(".check_lengths", {
    e2 <- structure(list(lengths = c(3L, 1L, 1L, 1L, 4L), values = c(1, -1, 1, -1, 1)), class = "rle")
    e1 <- structure(list(lengths = c(3L, 1L, 1L, 2L, 1L, 1L, 1L), values = c(-1, 1, -1, 1, -1, 1, -1)), class = "rle")
    expect_equal(statnet.common:::.check_lengths(rle1 = e1, rle2 = e2), NULL)
})
