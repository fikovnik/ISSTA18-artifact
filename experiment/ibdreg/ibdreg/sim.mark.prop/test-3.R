library(testthat)

.Random.seed <<- .ext.seed

test_that("sim.mark.prop", {
    ped7 <- list(NULL, person = c(1, 2, 3, 4, 5, 6, 7), father = c(0, 0, 0, 1, 0, 3, 5), mother = c(0, 0, 0, 2, 0, 4, 4), 
        sex = c(1, 2, 1, 2, 1, 1, 1), chrom1 = c(1, 3, 5, 0, 7, 0, 0), chrom2 = c(2, 4, 6, 0, 8, 0, 0))
    expect_equal(ibdreg:::sim.mark.prop(ped = ped7, n.iter = 5), list(NULL, person = c(1, 2, 3, 4, 5, 6, 7), father = c(0, 
        0, 0, 1, 0, 3, 5), mother = c(0, 0, 0, 2, 0, 4, 4), sex = c(1, 2, 1, 2, 1, 1, 1), chrom1 = c(1, 3, 5, 0, 7, 0, 0), 
        chrom2 = c(2, 4, 6, 0, 8, 0, 0), mark1 = structure(c(1L, 3L, 5L, 1L, 7L, 5L, 7L, 1L, 3L, 5L, 2L, 7L, 6L, 8L, 1L, 
            3L, 5L, 2L, 7L, 5L, 8L, 1L, 3L, 5L, 2L, 7L, 5L, 7L, 1L, 3L, 5L, 2L, 7L, 5L, 7L), .Dim = c(7L, 5L), .Dimnames = list(NULL, 
            c("m1.1", "m1.2", "m1.3", "m1.4", "m1.5"))), mark2 = structure(c(2L, 4L, 6L, 4L, 8L, 1L, 4L, 2L, 4L, 6L, 4L, 
            8L, 2L, 4L, 2L, 4L, 6L, 3L, 8L, 3L, 2L, 2L, 4L, 6L, 4L, 8L, 4L, 4L, 2L, 4L, 6L, 3L, 8L, 2L, 2L), .Dim = c(7L, 
            5L), .Dimnames = list(NULL, c("m2.1", "m2.2", "m2.3", "m2.4", "m2.5"))), x.linked = FALSE))
})
