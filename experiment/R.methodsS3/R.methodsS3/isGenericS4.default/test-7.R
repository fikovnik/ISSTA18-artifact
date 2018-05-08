library(testthat)

.Random.seed <<- .ext.seed

test_that("isGenericS4.default", {
    expect_equal(R.methodsS3:::isGenericS4.default(fcn = "show"), TRUE)
})
