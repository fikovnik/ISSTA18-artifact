library(testthat)

.Random.seed <<- .ext.seed

test_that("join", {
    g <- structure(c(1L, 1L, 2L, 2L, 3L, 3L), .Label = c("1", "2", "3"), class = "factor")
    f <- structure(c(1L, 1L, 1L, 2L, 2L, 2L), .Label = c("1", "2"), class = "factor")
    expect_equal(conf.design:::join(f, g), structure(c(1L, 1L, 2L, 3L, 4L, 4L), .Label = c("1:1", "1:2", "2:2", "2:3"), class = "factor"))
})
