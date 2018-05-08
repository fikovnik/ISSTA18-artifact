library(testthat)

.Random.seed <<- .ext.seed

test_that("pchibar", {
    expect_equal(ibdreg:::pchibar(x = 3, df = c(0, 1), wt = c(0.5, 0.5)), 0.958367741668225)
})
