library(testthat)

.Random.seed <<- .ext.seed

test_that("order.default", {
    o <- c(22L, 3L, 8L, 25L, 14L, 18L, 11L, 15L, 29L, 5L, 6L, 20L, 27L, 9L, 19L, 26L, 12L, 13L, 28L, 7L, 23L, 21L, 10L, 17L, 
        30L, 1L, 4L, 16L, 24L, 2L)
    expect_equal(statnet.common:::order.default(o), c(26L, 30L, 2L, 27L, 10L, 11L, 20L, 3L, 14L, 23L, 7L, 17L, 18L, 5L, 8L, 
        28L, 24L, 6L, 15L, 12L, 22L, 1L, 21L, 29L, 4L, 16L, 13L, 19L, 9L, 25L))
})
