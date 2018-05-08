library(testthat)

.Random.seed <<- .ext.seed

test_that("get_level_groups", {
    longs <- structure(c(2L, 4L, 3L, 1L, NA, 5L, 4L), .Label = c("dddddddddddddddd", "aaaaaaaaaaaaaaaa", "cccccccccccccccccccc", 
        "bbbbbbbbbbbbbbbbb", "hhhhhhhhhhhhhhhh"), class = "factor")
    expect_equal(janitor:::get_level_groups(vec = longs, n = 1, num_levels_in_var = max(as.numeric(longs), na.rm = TRUE)), 
        list(top = "dddddddddddddddd", mid = "<<< Middle Group (3 categories) >>>", bot = "hhhhhhhhhhhhhhhh"))
})
