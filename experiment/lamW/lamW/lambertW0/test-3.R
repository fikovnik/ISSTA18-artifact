library(testthat)

.Random.seed <<- .ext.seed

test_that("lambertW0", {
    expect_equal(lamW:::lambertW0(x = 0), 0)
})
