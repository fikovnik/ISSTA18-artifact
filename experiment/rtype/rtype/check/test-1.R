library(testthat)

.Random.seed <<- .ext.seed

test_that("check", {
    expect_equal(rtype:::check(x = 1L, value = 2L, type = is.integer), 2L)
})
