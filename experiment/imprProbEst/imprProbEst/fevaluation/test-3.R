library(testthat)

.Random.seed <<- .ext.seed

test_that("fevaluation", {
    x <- structure(c(1, 2, 3, 4), .Dim = c(1L, 4L))
    ListOfFunctions <- list(genthat::with_env(function(v) {
        ifelse(abs(v - 1) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())), genthat::with_env(function(v) {
        ifelse(abs(v - 2) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())), genthat::with_env(function(v) {
        ifelse(abs(v - 3) < 1e-10, 1, 0)
    }, env = list2env(list(), parent = baseenv())))
    expect_equal(imprProbEst:::fevaluation(z = x, ListOfFunctions = ListOfFunctions, useApply = FALSE), structure(c(1, 0, 
        0, 0, 1, 0, 0, 0, 1, 0, 0, 0), .Dim = 3:4))
})
