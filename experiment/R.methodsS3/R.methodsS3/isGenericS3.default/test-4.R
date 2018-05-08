library(testthat)

.Random.seed <<- .ext.seed

test_that("isGenericS3.default", {
    expect_equal(R.methodsS3:::isGenericS3.default(fcn = sum), TRUE)
})
