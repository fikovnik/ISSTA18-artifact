library(testthat)

.Random.seed <<- .ext.seed

test_that("quantity", {
    expect_equal(SCRT:::quantity(design = "ABAB", MT = 24, limit = 4), 165)
})
