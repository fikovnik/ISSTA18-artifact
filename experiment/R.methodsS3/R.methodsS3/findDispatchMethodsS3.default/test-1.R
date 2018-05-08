library(testthat)

.Random.seed <<- .ext.seed

test_that("findDispatchMethodsS3.default", {
    expect_equal(R.methodsS3:::findDispatchMethodsS3.default(methodName = "", classNames = "Options"), list())
})
