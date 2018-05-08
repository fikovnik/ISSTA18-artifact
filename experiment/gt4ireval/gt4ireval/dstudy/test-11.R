library(testthat)

.Random.seed <<- .ext.seed

test_that("dstudy", {
    g <- structure(list(n.s = 10L, n.q = 12L, var.s = 0.625757575757576, var.q = 0.884006734006734, var.e = 2.78720538720539, 
        em.s = 10.2962962962963, em.q = 11.6272727272727, em.e = 2.78720538720539, call = list(data = structure(list(p1 = c(5L, 
            6L, 5L, 5L, 5L, 3L, 4L, 5L, 6L, 7L, 3L, 3L), p2 = c(9L, 3L, 7L, 7L, 7L, 5L, 5L, 5L, 7L, 7L, 5L, 2L), p3 = c(3L, 
            4L, 3L, 3L, 5L, 3L, 3L, 5L, 6L, 5L, 1L, 6L), p4 = c(7L, 5L, 5L, 3L, 3L, 1L, 4L, 3L, 5L, 3L, 3L, 5L), p5 = c(9L, 
            2L, 9L, 7L, 7L, 7L, 3L, 7L, 2L, 7L, 5L, 3L), p6 = c(3L, 4L, 3L, 5L, 3L, 3L, 6L, 3L, 4L, 5L, 1L, 2L), p7 = c(7L, 
            3L, 7L, 7L, 7L, 5L, 5L, 7L, 5L, 5L, 5L, 4L), p8 = c(5L, 8L, 5L, 7L, 7L, 5L, 5L, 4L, 3L, 2L, 1L, 1L), p9 = c(9L, 
            9L, 8L, 8L, 6L, 6L, 6L, 5L, 5L, 8L, 1L, 1L), p10 = c(4L, 4L, 4L, 3L, 3L, 5L, 6L, 5L, 5L, 7L, 1L, 1L)), class = "data.frame", 
            row.names = c(NA, -12L)), drop = 0)), class = "gstudy")
    expect_equal(gt4ireval:::dstudy(gdata = g, alpha = 0.1), structure(list(Erho2 = 0.729300196206671, Phi = 0.671635722997696, 
        n.q_Erho2 = 85, n.q_Phi = 112, Erho2.lwr = 0.541010905420649, Erho2.upr = 0.876363137240463, Phi.lwr = 0.456901329313964, 
        Phi.upr = 0.845419296231267, n.q_Erho2.lwr = 194, n.q_Erho2.upr = 33, n.q_Phi.lwr = 272, n.q_Phi.upr = 42, call = list(gstudy = structure(list(n.s = 10L, 
            n.q = 12L, var.s = 0.625757575757576, var.q = 0.884006734006734, var.e = 2.78720538720539, em.s = 10.2962962962963, 
            em.q = 11.6272727272727, em.e = 2.78720538720539, call = list(data = structure(list(p1 = c(5L, 6L, 5L, 5L, 5L, 
                3L, 4L, 5L, 6L, 7L, 3L, 3L), p2 = c(9L, 3L, 7L, 7L, 7L, 5L, 5L, 5L, 7L, 7L, 5L, 2L), p3 = c(3L, 4L, 3L, 3L, 
                5L, 3L, 3L, 5L, 6L, 5L, 1L, 6L), p4 = c(7L, 5L, 5L, 3L, 3L, 1L, 4L, 3L, 5L, 3L, 3L, 5L), p5 = c(9L, 2L, 9L, 
                7L, 7L, 7L, 3L, 7L, 2L, 7L, 5L, 3L), p6 = c(3L, 4L, 3L, 5L, 3L, 3L, 6L, 3L, 4L, 5L, 1L, 2L), p7 = c(7L, 3L, 
                7L, 7L, 7L, 5L, 5L, 7L, 5L, 5L, 5L, 4L), p8 = c(5L, 8L, 5L, 7L, 7L, 5L, 5L, 4L, 3L, 2L, 1L, 1L), p9 = c(9L, 
                9L, 8L, 8L, 6L, 6L, 6L, 5L, 5L, 8L, 1L, 1L), p10 = c(4L, 4L, 4L, 3L, 3L, 5L, 6L, 5L, 5L, 7L, 1L, 1L)), class = "data.frame", 
                row.names = c(NA, -12L)), drop = 0)), class = "gstudy"), queries = 12L, stability = 0.95, alpha = 0.1)), 
        class = "dstudy"))
})
