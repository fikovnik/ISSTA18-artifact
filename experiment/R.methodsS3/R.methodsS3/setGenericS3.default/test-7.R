library(testthat)

.Random.seed <<- .ext.seed

test_that("setGenericS3.default", {
    expect_equal(R.methodsS3:::setGenericS3.default(name = "foo", validators = list(R.methodsS3:::rccValidateSetGenericS3)), 
        NULL)
})
