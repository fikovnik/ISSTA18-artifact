library(testthat)

.Random.seed <<- .ext.seed

test_that("is.odd", {
    expect_equal(schoolmath:::is.odd(x = 2), FALSE)
})
