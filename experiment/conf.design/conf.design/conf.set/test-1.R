library(testthat)

.Random.seed <<- .ext.seed

test_that("conf.set", {
    G <- structure(c(1, 0, 2, 1, 1, 1, 0, 1), .Dim = c(2L, 4L), .Dimnames = list(NULL, c("A", "B", "C", "D")))
    expect_equal(conf.design:::conf.set(G = G, p = 3), structure(c(1, 0, 1, 1, 2, 1, 0, 1, 1, 1, 2, 0, 0, 1, 1, 2), .Dim = c(4L, 
        4L), .Dimnames = list(NULL, c("A", "B", "C", "D"))))
})
