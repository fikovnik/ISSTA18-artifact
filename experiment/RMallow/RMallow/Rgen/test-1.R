library(testthat)

.Random.seed <<- .ext.seed

test_that("Rgen", {
    expect_equal(RMallow:::Rgen(G = 3, hyp = 1:5, abils = 5), list(1:5, c(5L, 4L, 1L, 2L, 3L), c(3L, 5L, 1L, 2L, 4L)))
})
