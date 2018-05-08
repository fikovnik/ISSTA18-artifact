library(testthat)

.Random.seed <<- .ext.seed

test_that("tabyl.data.frame", {
    . <- structure(list(a = c(1, 2, 2, 2, 1, 1, 1, NA, NA, 1), b = c("up", "up", "up", "up", "down", "down", "down", "down", 
        NA, NA), c = c(10, 10, 10, 10, 10, 10, 10, 10, 10, 10)), row.names = c(NA, -10L), class = "data.frame")
    expect_equal(janitor:::tabyl.data.frame(dat = ., var1 = c, var2 = a, var3 = b, show_missing_levels = FALSE), list(down = structure(list(c = 10, 
        `1` = 3, NA_ = 1), row.names = c(NA, -1L), core = structure(list(c = 10, `1` = 3, NA_ = 1), row.names = c(NA, -1L), 
        class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "c", col = "a"), class = c("tabyl", "data.frame")), 
        up = structure(list(c = 10, `1` = 1, `2` = 3), row.names = c(NA, -1L), core = structure(list(c = 10, `1` = 1, `2` = 3), 
            row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "c", col = "a"), 
            class = c("tabyl", "data.frame")), NA_ = structure(list(c = 10, `1` = 1, NA_ = 1), row.names = c(NA, -1L), core = structure(list(c = 10, 
            `1` = 1, NA_ = 1), row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "c", 
            col = "a"), class = c("tabyl", "data.frame"))))
})
