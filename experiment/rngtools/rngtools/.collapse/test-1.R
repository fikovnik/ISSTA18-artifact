library(testthat)

.Random.seed <<- .ext.seed

test_that(".collapse", {
    s <- c(407L, 1L, 2L, 3L, 4L, 5L, 6L)
    expect_equal(rngtools:::.collapse(x = s), "407, 1, 2, 3, 4, 5, 6")
})
