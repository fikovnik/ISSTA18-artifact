library(testthat)

.Random.seed <<- .ext.seed

test_that("tabyl.default", {
    x <- c("big", "big", "small", "small", "small", NA)
    expect_equal(janitor:::tabyl.default(dat = x), structure(list(x = c("big", "small", NA), n = c(2, 3, 1), percent = c(0.333333333333333, 
        0.5, 0.166666666666667), valid_percent = c(0.4, 0.6, NA)), row.names = c(NA, -3L), class = c("tabyl", "data.frame"), 
        core = structure(list(x = c("big", "small", NA), n = c(2, 3, 1), percent = c(0.333333333333333, 0.5, 0.166666666666667), 
            valid_percent = c(0.4, 0.6, NA)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "one_way"))
})
