library(testthat)

.Random.seed <<- .ext.seed

test_that("rowweights.logwmatrix", {
    m <- structure(c(1, 1, 3, 3, 2, 2, 1, 1, 2, 2, 6, 6, 4, 4, 2, 2, 3, 3, 9, 9, 6, 6, 3, 3), .Dim = c(8L, 3L))
    compress_rows <- statnet.common::compress_rows
    as.logwmatrix <- statnet.common::as.logwmatrix
    expect_equal(statnet.common:::rowweights.logwmatrix(x = compress_rows(as.logwmatrix(m))), c(4, 2, 2))
})
