library(testthat)

.Random.seed <<- .ext.seed

test_that("append.rhs.formula", {
    expect_equal(statnet.common:::append.rhs.formula(object = y ~ x, newterms = ~z1 + z2), y ~ x + z1 + z2)
})
