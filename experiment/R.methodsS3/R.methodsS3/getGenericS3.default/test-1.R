library(testthat)

.Random.seed <<- .ext.seed

test_that("getGenericS3.default", {
    expect_equal(R.methodsS3:::getGenericS3.default(name = "print"), genthat::with_env(function(x, ...) UseMethod("print"), 
        env = .BaseNamespaceEnv))
})
