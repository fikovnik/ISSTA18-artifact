library(testthat)

.Random.seed <<- .ext.seed

test_that("gt2tau", {
    expect_equal(gt4ireval:::gt2tau(Erho2 = 0.95), 0.864116836882764)
})
