library(testthat)

.Random.seed <<- .ext.seed

test_that("pSpearman", {
    expect_equal(SuppDists:::pSpearman(q = 0.95, r = 10), 0.999975473985891)
})
