library(testthat)

.Random.seed <<- .ext.seed

test_that("setMethodS3.default", {
    expect_equal(R.methodsS3:::setMethodS3.default(name = "$", class = "SomeClass", definition = function(x, name) {
        attr(x, name)
    }), NULL)
})
