library(testthat)

.Random.seed <<- .ext.seed

test_that("gstudy", {
    synthetic4 <- gt4ireval::synthetic4
    expect_equal(gt4ireval:::gstudy(data = synthetic4, drop = 0.3), structure(list(n.s = 7L, n.q = 12L, var.s = 0.365440115440115, 
        var.q = 1.57287157287157, var.e = 2.72582972582973, em.s = 7.11111111111111, em.q = 13.7359307359307, em.e = 2.72582972582973, 
        call = list(data = structure(list(p1 = c(5L, 6L, 5L, 5L, 5L, 3L, 4L, 5L, 6L, 7L, 3L, 3L), p2 = c(9L, 3L, 7L, 7L, 
            7L, 5L, 5L, 5L, 7L, 7L, 5L, 2L), p5 = c(9L, 2L, 9L, 7L, 7L, 7L, 3L, 7L, 2L, 7L, 5L, 3L), p7 = c(7L, 3L, 7L, 7L, 
            7L, 5L, 5L, 7L, 5L, 5L, 5L, 4L), p8 = c(5L, 8L, 5L, 7L, 7L, 5L, 5L, 4L, 3L, 2L, 1L, 1L), p9 = c(9L, 9L, 8L, 8L, 
            6L, 6L, 6L, 5L, 5L, 8L, 1L, 1L), p10 = c(4L, 4L, 4L, 3L, 3L, 5L, 6L, 5L, 5L, 7L, 1L, 1L)), class = "data.frame", 
            row.names = c(NA, -12L)), drop = 0.3)), class = "gstudy"))
})
