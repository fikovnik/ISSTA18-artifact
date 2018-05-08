library(testthat)

.Random.seed <<- .ext.seed

test_that("sim.mark.prop", {
    ped7.x <- list(NULL, person = c(1, 2, 3, 4, 5, 6, 7), father = c(0, 0, 0, 1, 0, 3, 5), mother = c(0, 0, 0, 2, 0, 4, 4), 
        sex = c(1, 2, 1, 2, 1, 1, 1), chrom1 = c(1, 2, 4, 0, 5, 0, 0), chrom2 = c(1, 3, 4, 0, 5, 0, 0))
    expect_equal(ibdreg:::sim.mark.prop(ped = ped7.x, x.linked = TRUE, n.iter = 5), list(NULL, person = c(1, 2, 3, 4, 5, 
        6, 7), father = c(0, 0, 0, 1, 0, 3, 5), mother = c(0, 0, 0, 2, 0, 4, 4), sex = c(1, 2, 1, 2, 1, 1, 1), chrom1 = c(1, 
        2, 4, 0, 5, 0, 0), chrom2 = c(1, 3, 4, 0, 5, 0, 0), mark1 = structure(c(1L, 2L, 4L, 1L, 5L, 1L, 2L, 1L, 2L, 4L, 1L, 
        5L, 2L, 1L, 1L, 2L, 4L, 1L, 5L, 1L, 1L, 1L, 2L, 4L, 1L, 5L, 1L, 2L, 1L, 2L, 4L, 1L, 5L, 1L, 1L), .Dim = c(7L, 5L), 
        .Dimnames = list(NULL, c("m1.1", "m1.2", "m1.3", "m1.4", "m1.5"))), mark2 = structure(c(1L, 3L, 4L, 2L, 5L, 1L, 2L, 
        1L, 3L, 4L, 2L, 5L, 2L, 1L, 1L, 3L, 4L, 3L, 5L, 1L, 1L, 1L, 3L, 4L, 2L, 5L, 1L, 2L, 1L, 3L, 4L, 2L, 5L, 1L, 1L), 
        .Dim = c(7L, 5L), .Dimnames = list(NULL, c("m2.1", "m2.2", "m2.3", "m2.4", "m2.5"))), x.linked = TRUE))
})
