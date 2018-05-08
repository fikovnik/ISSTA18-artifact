library(testthat)

.Random.seed <<- .ext.seed

test_that("cosine", {
    b <- c(0, 0, 0, 1, 0)
    a <- c(2, 1, 1, 1, 0)
    expect_equal(lsa:::cosine(x = a, y = b), structure(0.377964473009227, .Dim = c(1L, 1L)))
})
