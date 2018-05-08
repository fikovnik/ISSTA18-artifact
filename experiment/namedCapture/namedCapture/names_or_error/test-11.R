library(testthat)

.Random.seed <<- .ext.seed

test_that("names_or_error", {
    vec.with.attrs <- structure(1L, match.length = 3L, useBytes = TRUE, capture.start = structure(1L, .Dim = c(1L, 1L), .Dimnames = list(NULL, 
        "name")), capture.length = structure(3L, .Dim = c(1L, 1L), .Dimnames = list(NULL, "name")), capture.names = "name")
    expect_equal(namedCapture:::names_or_error(vec.with.attrs = vec.with.attrs), "name")
})
