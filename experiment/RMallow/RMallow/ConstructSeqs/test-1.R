library(testthat)

.Random.seed <<- .ext.seed

test_that("ConstructSeqs", {
    expect_equal(RMallow:::ConstructSeqs(prefs = matrix(c(1, 1, 1, 0, 0, 0), nrow = 1), n.abils = 4), list(c(4L, 1L, 2L, 
        3L)))
})
