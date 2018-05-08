library(testthat)

.Random.seed <<- .ext.seed

test_that("tghyper", {
    expect_equal(SuppDists:::tghyper(a = -4, k = 3, N = -6), "type = IIA -- 0 <= x <= 3")
})
