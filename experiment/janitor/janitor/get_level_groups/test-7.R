library(testthat)

.Random.seed <<- .ext.seed

test_that("get_level_groups", {
    shorts <- structure(c(6L, 5L, 4L, 3L, 2L, 1L), .Label = c("f", "e", "d", "c", "b", "a"), class = "factor")
    expect_equal(janitor:::get_level_groups(vec = shorts, n = 3, num_levels_in_var = max(as.numeric(shorts), na.rm = TRUE)), 
        list(top = "f, e, d", mid = NA, bot = "c, b, a"))
})
