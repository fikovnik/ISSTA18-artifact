library(testthat)

.Random.seed <<- .ext.seed

test_that("rccValidateFunctionName", {
    name <- "foo"
    expect_equal(R.methodsS3:::rccValidateFunctionName(name = name), NULL)
})
