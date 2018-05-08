library(testthat)

.Random.seed <<- .ext.seed

test_that("mptEM", {
    expect_equal(mpt:::mptEM(theta = structure(c(0.5, 0.5, 0.5), names = c("c", "r", "u")), data = c(243, 64, 58, 55), a = structure(c(1, 
        NA, 0, NA, 0, NA, 1, 0, 1, NA, 0, NA, 0, NA, 0, 0, 0, NA, 2, NA, 1, NA, 0, 0), .Dim = c(2L, 4L, 3L), .Dimnames = list(NULL, 
        NULL, c("c", "r", "u"))), b = structure(c(0, NA, 1, NA, 1, NA, 0, 1, 0, NA, 0, NA, 0, NA, 1, 0, 0, NA, 0, NA, 1, 
        NA, 0, 2), .Dim = c(2L, 4L, 3L), .Dimnames = list(NULL, NULL, c("c", "r", "u"))), c = structure(c(1, 1, 1, 1, 2, 
        1, 1, 1), .Dim = c(2L, 4L))), list(theta = structure(c(0.678235346525021, 0.853054078552192, 0.688169346872621), 
        names = c("c", "r", "u")), loglik = -480.015510873494, pcat = c(0.578571428571429, 0.152380355378938, 0.138096432099268, 
        0.130951783950366), pbranch = structure(c(0.578571428571429, NA, 0.152380355378938, NA, 0.138096432099268, NA, 0.0996639179535926, 
        0.0312878659967734), .Dim = c(2L, 4L)), iter = 23))
})
