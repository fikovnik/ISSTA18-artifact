library(testthat)

.Random.seed <<- .ext.seed

test_that("cosine", {
    m <- structure(c(2, 1, 1, 1, 0, 0, 0, 0, 1, 0, 2, 1, 1, 1, 0, 2, 1, 1, 1, 0), .Dim = c(5L, 4L), .Dimnames = list(NULL, 
        c("a", "b", "a", "a")))
    expect_equal(lsa:::cosine(x = m), structure(c(1, 0.377964473009227, 1, 1, 0.377964473009227, 1, 0.377964473009227, 0.377964473009227, 
        1, 0.377964473009227, 1, 1, 1, 0.377964473009227, 1, 1), .Dim = c(4L, 4L), .Dimnames = list(c("a", "b", "a", "a"), 
        c("a", "b", "a", "a"))))
})
