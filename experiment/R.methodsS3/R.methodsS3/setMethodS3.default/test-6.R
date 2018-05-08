library(testthat)

.Random.seed <<- .ext.seed

test_that("setMethodS3.default", {
    expect_equal(R.methodsS3:::setMethodS3.default(name = "bar<-", class = "character", definition = function(x, value) {
        attr(x, "bar") <- value
        x
    }), NULL)
})
