library(testthat)

.Random.seed <<- .ext.seed

test_that("US", {
    expect_equal(reports:::US(text = "bad path with spaces"), "bad_path_with_spaces")
})
