library(testthat)

.Random.seed <<- .ext.seed

test_that("get_level_groups", {
    num_levels_in_var <- 5L
    n <- 2
    input_vec <- structure(1:3, .Label = c("a", "b", "c", "d", "e"), class = "factor")
    expect_equal(janitor:::get_level_groups(vec = input_vec, n = n, num_levels_in_var = num_levels_in_var), list(top = "a, b", 
        mid = "c", bot = "d, e"))
})
