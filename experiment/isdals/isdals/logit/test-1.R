library(testthat)

.Random.seed <<- .ext.seed

test_that("logit", {
    p <- 0.3
    expect_equal(isdals:::logit(p = p), -0.847297860387204)
})
