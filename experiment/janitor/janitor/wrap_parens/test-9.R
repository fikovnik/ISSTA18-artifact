library(testthat)

.Random.seed <<- .ext.seed

test_that("wrap_parens", {
    am <- "1"
    expect_equal(janitor:::wrap_parens(x = am), "(1)")
})
