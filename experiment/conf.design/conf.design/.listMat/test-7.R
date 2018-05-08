library(testthat)

.Random.seed <<- .ext.seed

test_that(".listMat", {
    p <- 3
    G <- structure(c(1, 1), .Dim = 1:2, .Dimnames = list(NULL, c("D", "E")))
    D <- structure(c(0L, 1L, 2L, 0L, 1L, 2L, 0L, 1L, 2L, 0L, 0L, 0L, 1L, 1L, 1L, 2L, 2L, 2L), .Dim = c(9L, 2L), .Dimnames = list(NULL, 
        c("Var1", "Var2")))
    expect_equal(conf.design:::.listMat(M = (D %*% t(G))%%p, f = format), list(c("0", "1", "2", "1", "2", "0", "2", "0", 
        "1")))
})
