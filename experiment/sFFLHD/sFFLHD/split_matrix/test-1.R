library(testthat)

.Random.seed <<- .ext.seed

test_that("split_matrix", {
    mat <- structure(1:12, .Dim = c(6L, 2L))
    expect_equal(sFFLHD:::split_matrix(mat = mat, rowspergroup = 4, shuffle = TRUE), list(structure(c(1L, 2L, 3L, 4L, 7L, 
        8L, 9L, 10L), .Dim = c(4L, 2L))))
})
