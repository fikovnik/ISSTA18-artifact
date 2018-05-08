library(testthat)

.Random.seed <<- .ext.seed

test_that("ArgMinDist", {
    x <- structure(c(1, 2, 3, 4), .Dim = c(1L, 4L))
    ubomega <- 4
    lbomega <- 1
    ImpreciseModel <- list(list(list(genthat::with_env(function(v) {
        ifelse(abs(v - 1) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())), genthat::with_env(function(v) {
        ifelse(abs(v - 2) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())), genthat::with_env(function(v) {
        ifelse(abs(v - 3) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())), genthat::with_env(function(v) {
        1 - ifelse(abs(v - 3) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv()))), c(0.22, 0.22, 0.26, 1)), list(list(genthat::with_env(function(v) {
        ifelse(abs(v - 1) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())), genthat::with_env(function(v) {
        ifelse(abs(v - 2) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())), genthat::with_env(function(v) {
        ifelse(abs(v - 3) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv()))), c(0.21, 0.29, 0.24)))
    epsilon <- 0.01
    expect_equal(imprProbEst:::ArgMinDist(x = x, lbomega = lbomega, ubomega = ubomega, epsilon = epsilon, ImpreciseModel = ImpreciseModel), 
        list(2L, 0.0980000000000001, 2))
})
