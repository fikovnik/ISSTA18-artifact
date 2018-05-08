library(testthat)

.Random.seed <<- .ext.seed

test_that("showCall", {
    object <- 1:10
    indent <- "    "
    expect_equal(SoDA:::showCall(object = object, indent = indent), NULL)
})
