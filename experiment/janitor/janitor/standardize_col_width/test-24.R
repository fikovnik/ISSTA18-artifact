library(testthat)

.Random.seed <<- .ext.seed

test_that("standardize_col_width", {
    am <- "(1)"
    expect_equal(janitor:::standardize_col_width(x = am), "(1)")
})
