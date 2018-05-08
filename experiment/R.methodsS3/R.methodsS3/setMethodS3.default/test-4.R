library(testthat)

.Random.seed <<- .ext.seed

test_that("setMethodS3.default", {
    expect_equal(R.methodsS3:::setMethodS3.default(name = "yaa", class = "character", abstract = TRUE, validators = list(R.methodsS3:::rccValidateSetMethodS3)), 
        NULL)
})
