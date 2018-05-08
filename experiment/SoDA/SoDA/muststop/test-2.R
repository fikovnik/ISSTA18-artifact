library(testthat)

.Random.seed <<- .ext.seed

test_that("muststop", {
    withStrictOps <- SoDA::withStrictOps
    rnorm <- stats::rnorm
    expect_equal(SoDA:::muststop(expr = withStrictOps(sum(rnorm(3) == as.raw(1:3))), silent = FALSE), structure(list(message = "<strictOp>: rnorm(3) == as.raw(1:3): Undefined combination of types for comparison: double, raw", 
        call = NULL), class = c("simpleError", "error", "condition")))
})
