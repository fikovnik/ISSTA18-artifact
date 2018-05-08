library(testthat)

.Random.seed <<- .ext.seed

test_that("apply_type_funs", {
    type.list <- NULL
    m <- structure("foo", .Dim = c(1L, 1L), .Dimnames = list(NULL, "name"))
    expect_equal(namedCapture:::apply_type_funs(match.mat = m, type.list = type.list), structure(character(0), .Dim = c(1L, 
        0L), .Dimnames = list("foo", NULL)))
})
