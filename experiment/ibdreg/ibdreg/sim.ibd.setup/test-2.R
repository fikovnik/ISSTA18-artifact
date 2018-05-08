library(testthat)

.Random.seed <<- .ext.seed

test_that("sim.ibd.setup", {
    x.linked <- TRUE
    ped <- structure(list(person = 1:7, father = c(0L, 0L, 0L, 1L, 0L, 3L, 5L), mother = c(0L, 0L, 0L, 2L, 0L, 4L, 4L), sex = c(1L, 
        2L, 1L, 2L, 1L, 1L, 1L), male = c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE), affection = c(1L, 3L, 5L, 0L, 7L, 
        0L, 0L)), row.names = c(NA, -7L), class = "data.frame")
    expect_equal(ibdreg:::sim.ibd.setup(ped = ped, x.linked = x.linked), structure(list(person = 1:7, father = c(0L, 0L, 
        0L, 1L, 0L, 3L, 5L), mother = c(0L, 0L, 0L, 2L, 0L, 4L, 4L), sex = c(1L, 2L, 1L, 2L, 1L, 1L, 1L), male = c(TRUE, 
        FALSE, TRUE, FALSE, TRUE, TRUE, TRUE), affection = c(1L, 3L, 5L, 0L, 7L, 0L, 0L), a1 = c(1, 1, 1, 1, 1, 1, 1), a1.orig = c(1, 
        1, 1, 1, 1, 1, 1), a2 = c(1, 1, 1, 1, 1, 1, 1), a2.orig = c(2, 2, 2, 2, 2, 2, 2), chrom1 = structure(c(1, 4, 2, 0, 
        3, 0, 0), .Dim = c(7L, 1L), class = "model.matrix"), chrom2 = structure(c(1, 5, 2, 0, 3, 0, 0), .Dim = c(7L, 1L), 
        class = "model.matrix")), row.names = c(NA, -7L), class = "data.frame"))
})
