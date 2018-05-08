library(testthat)

.Random.seed <<- .ext.seed

test_that("is_raw_list", {
    x <- list(1)
    expect_equal(blob:::is_raw_list(x = x), FALSE)
})
