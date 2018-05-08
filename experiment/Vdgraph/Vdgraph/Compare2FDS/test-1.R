library(testthat)

.Random.seed <<- .ext.seed

test_that("Compare2FDS", {
    SCDH5 <- structure(c(-1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, -2L, 2L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 0L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, 1L, 0L, 0L, -2L, 2L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1L, -1L, -1L, -1L, 1L, 1L, 1L, 1L, -1L, -1L, -1L, -1L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 
        0L, -2L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 
        0L, 0L, 0L, 0L, 0L, -2L, 2L, 0L, 0L, 0L, 0L, 1L, -1L, -1L, 1L, -1L, 1L, 1L, -1L, -1L, 1L, 1L, -1L, 1L, -1L, -1L, 
        1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -2L, 2L, 0L, 0L), .Dim = c(28L, 5L), .Dimnames = list(NULL, c("x1", "x2", "x3", 
        "x4", "x5")))
    SCDDL5 <- structure(c(1, 1, -1, 1, 1, 1, -1, -1, -1, 1, -1, -1, -1.86121, 1.86121, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 
        1, -1, 1, 1, 1, -1, -1, -1, 1, -1, 0, 0, -1.86121, 1.86121, 0, 0, 0, 0, 0, 0, 0, 1, -1, 1, 1, -1, 1, 1, 1, -1, -1, 
        -1, -1, 0, 0, 0, 0, -1.86121, 1.86121, 0, 0, 0, 0, 0, 1, -1, -1, -1, 1, -1, 1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 
        -1.86121, 1.86121, 0, 0, 0, 1, -1, 1, 1, 1, -1, -1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1.86121, 1.86121, 
        0), .Dim = c(23L, 5L), .Dimnames = list(NULL, c("x1", "x2", "x3", "x4", "x5")))
    expect_equal(Vdgraph:::Compare2FDS(des1 = SCDH5, des2 = SCDDL5, name1 = "Hartley SCD-5", name2 = "Draper-Lin SCD5", mod = 2), 
        NULL)
})
