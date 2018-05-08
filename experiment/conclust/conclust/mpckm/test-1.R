library(testthat)

.Random.seed <<- .ext.seed

test_that("mpckm", {
    mustLink <- structure(c(1, 2), .Dim = 1:2)
    k <- 2
    data <- structure(c(0, 1, 1, 0, 0, 0, 1, 1), .Dim = c(4L, 2L))
    cantLink <- structure(c(1, 4), .Dim = 1:2)
    expect_equal(conclust:::mpckm(data = data, k = k, mustLink = mustLink, cantLink = cantLink), c(1, 1, 2, 2))
})
