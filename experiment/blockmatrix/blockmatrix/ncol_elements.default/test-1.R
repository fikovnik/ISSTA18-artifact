library(testthat)

.Random.seed <<- .ext.seed

test_that("ncol_elements.default", {
    e2 <- 1
    expect_equal(blockmatrix:::ncol_elements.default(M = e2), NA)
})
