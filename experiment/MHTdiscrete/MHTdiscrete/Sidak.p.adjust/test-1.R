library(testthat)

.Random.seed <<- .ext.seed

test_that("Sidak.p.adjust", {
    p <- c(0.03515625, 0.015625, 0.04096)
    expect_equal(MHTdiscrete:::Sidak.p.adjust(p = p), c(0.101804316043854, 0.0461463928222656, 0.117915554676736))
})
