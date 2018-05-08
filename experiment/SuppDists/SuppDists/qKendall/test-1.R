library(testthat)

.Random.seed <<- .ext.seed

test_that("qKendall", {
    expect_equal(SuppDists:::qKendall(p = 0.95, N = c(10, 20)), c(0.422222222222222, 0.263157894736842))
})
