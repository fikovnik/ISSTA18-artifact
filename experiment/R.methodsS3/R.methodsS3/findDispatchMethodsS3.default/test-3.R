library(testthat)

.Random.seed <<- .ext.seed

test_that("findDispatchMethodsS3.default", {
    methodName <- "print"
    classNames <- "unknown"
    expect_equal(R.methodsS3:::findDispatchMethodsS3.default(methodName = methodName, classNames = classNames, firstOnly = TRUE), 
        list())
})
