library(testthat)

.Random.seed <<- .ext.seed

test_that("NVL", {
    expect_equal(statnet.common:::NVL(NULL, 0, 1), 0)
})
