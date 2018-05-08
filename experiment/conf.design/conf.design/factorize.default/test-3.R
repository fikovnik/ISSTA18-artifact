library(testthat)

.Random.seed <<- .ext.seed

test_that("factorize.default", {
    expect_equal(conf.design:::factorize.default(x = 12321), c(3, 3, 37, 37))
})
