library(testthat)

.Random.seed <<- .ext.seed

test_that("as.blockmatrix.matrix", {
    oo <- structure(c(2.37095844714667, 0.435301828603911, 1.36312841133734, 0, 0, 0, 1.63286260496104, 1.404268323141, 0.893875483908516, 
        0, 0, 0, 2.51152199743894, 0.905340961586902, 3.01842371387704, 0, 0, 0), .Dim = c(6L, 3L))
    nrowe <- 3
    ncole <- 3
    expect_equal(blockmatrix:::as.blockmatrix.matrix(M = oo, nrowe = nrowe, ncole = ncole), structure(list(`V1,1` = structure(c(2.37095844714667, 
        0.435301828603911, 1.36312841133734, 1.63286260496104, 1.404268323141, 0.893875483908516, 2.51152199743894, 0.905340961586902, 
        3.01842371387704), .Dim = c(3L, 3L)), value = structure(c("V1,1", "0"), .Dim = c(2L, 1L))), class = "blockmatrix"))
})
