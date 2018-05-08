library(testthat)

.Random.seed <<- .ext.seed

test_that("scm", {
    expect_equal(schoolmath:::scm(x = 3528, y = 3780), 52920)
})
