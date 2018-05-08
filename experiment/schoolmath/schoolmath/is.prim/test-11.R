library(testthat)

.Random.seed <<- .ext.seed

test_that("is.prim", {
    expect_equal(schoolmath:::is.prim(y = 11), TRUE)
})
