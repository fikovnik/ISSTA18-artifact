library(testthat)

.Random.seed <<- .ext.seed

test_that("check", {
    expect_equal(rtype:::check(x = c(1L, 2L), value = c(2L, 3L), type = is.integer, length = 2), 2:3)
})
