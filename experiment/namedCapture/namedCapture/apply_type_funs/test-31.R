library(testthat)

.Random.seed <<- .ext.seed

test_that("apply_type_funs", {
    type.list <- NULL
    m <- structure(character(0), .Dim = c(0L, 0L))
    expect_equal(namedCapture:::apply_type_funs(match.mat = m, type.list = type.list), structure(character(0), .Dim = c(0L, 
        0L)))
})
