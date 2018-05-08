library(testthat)

.Random.seed <<- .ext.seed

test_that("is.tree", {
    tree <- structure(c(8, 3, 12, 4, 12, 5, 8, 12, 11, 6, 11, 8, 14, 1, 14, 11, 9, 14, 13, 7, 13, 2, 9, 13, 10, 9), .Dim = c(2L, 
        13L))
    expect_equal(oncomodel:::is.tree(tree = tree), TRUE)
})
