library(testthat)

.Random.seed <<- .ext.seed

test_that("match.funfn", {
    FUN <- .Primitive("c")
    expect_equal(gsubfn:::match.funfn(FUN = FUN), .Primitive("c"))
})
