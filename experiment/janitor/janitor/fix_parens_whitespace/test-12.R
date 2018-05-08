library(testthat)

.Random.seed <<- .ext.seed

test_that("fix_parens_whitespace", {
    X <- c("4 (4)", "6 (6)", "8 (8)", "9% ( 3)", "13% ( 4)", "38% (12)", "25% (8)", "9% (3)", "6% (2)")
    i <- 3L
    expect_equal(janitor:::fix_parens_whitespace(x = X[[i]]), "8 (8)")
})
