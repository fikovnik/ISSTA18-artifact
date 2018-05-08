library(testthat)

.Random.seed <<- .ext.seed

test_that("genComp", {
    expect_equal(multicool:::genComp(n = 6), list(c(1L, 1L, 1L, 1L, 1L, 1L), c(1L, 1L, 1L, 1L, 2L), c(1L, 1L, 1L, 3L), c(1L, 
        1L, 2L, 2L), c(1L, 1L, 4L), 1:3, c(1L, 5L), c(2L, 2L, 2L), c(2L, 4L), c(3L, 3L), 6L))
})
