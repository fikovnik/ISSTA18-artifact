library(testthat)

.Random.seed <<- .ext.seed

test_that("FDSPlot", {
    D310 <- structure(c(0, 0, -1, 1, -1, 1, 1.7636, -1.7636, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1.736, -1.736, 1.2906, -0.136, 
        0.6386, 0.6386, 0.6386, 0.6386, -0.9273, -0.9273, -0.9273, -0.9273), .Dim = c(10L, 3L), .Dimnames = list(c("1", "2", 
        "3", "4", "5", "6", "7", "8", "9", "10"), c("x1", "x2", "x3")))
    expect_equal(Vdgraph:::FDSPlot(des = D310), NULL)
})
