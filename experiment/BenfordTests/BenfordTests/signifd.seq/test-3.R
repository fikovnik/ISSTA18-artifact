library(testthat)

.Random.seed <<- .ext.seed

test_that("signifd.seq", {
    expect_equal(BenfordTests:::signifd.seq(digits = 1), 1:9)
})
