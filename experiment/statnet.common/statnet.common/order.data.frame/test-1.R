library(testthat)

.Random.seed <<- .ext.seed

test_that("order.data.frame", {
    x <- structure(list(V1 = c(3L, 3L, 1L, 3L, 2L, 2L, 3L, 1L, 2L, 3L, 2L, 3L, 3L, 1L, 2L, 3L, 3L, 1L, 2L, 2L, 3L, 1L, 3L, 
        3L, 1L, 2L, 2L, 3L, 2L, 3L), V2 = c(2L, 2L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 
        1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 2L), V3 = c(3L, 4L, 4L, 3L, 4L, 1L, 2L, 4L, 3L, 1L, 1L, 1L, 1L, 2L, 1L, 3L, 1L, 
        2L, 3L, 1L, 3L, 1L, 2L, 3L, 4L, 3L, 1L, 1L, 1L, 2L)), row.names = c(NA, -30L), class = "data.frame")
    expect_equal(statnet.common:::order.data.frame(x), c(22L, 3L, 8L, 25L, 14L, 18L, 11L, 15L, 29L, 5L, 6L, 20L, 27L, 9L, 
        19L, 26L, 12L, 13L, 28L, 7L, 23L, 21L, 10L, 17L, 30L, 1L, 4L, 16L, 24L, 2L))
})
