library(testthat)

.Random.seed <<- .ext.seed

test_that("split_matrix", {
    mat <- structure(1:12, .Dim = c(6L, 2L))
    expect_equal(sFFLHD:::split_matrix(mat = mat, nsplits = 4, shuffle = FALSE), list(c(1L, 7L), c(2L, 8L), c(4L, 10L), c(5L, 
        11L)))
})
