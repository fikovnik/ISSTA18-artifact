library(testthat)

.Random.seed <<- .ext.seed

test_that("vector.namesmatch", {
    test <- list(c = 1, b = 2, a = 3)
    expect_equal(statnet.common:::vector.namesmatch(v = test, names = c("a", "c", "b")), list(a = 3, c = 1, b = 2))
})
