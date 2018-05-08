library(testthat)

.Random.seed <<- .ext.seed

test_that("append.rhs.formula", {
    expect_equal(statnet.common:::append.rhs.formula(object = ~y, newterms = list(as.name("z"))), y ~ z)
})
