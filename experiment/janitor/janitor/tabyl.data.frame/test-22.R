library(testthat)

.Random.seed <<- .ext.seed

test_that("tabyl.data.frame", {
    j <- FALSE
    . <- structure(list(a = c(1, 0, 1), b = c("x", "y", "y"), c = c(1, 1, 2)), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(janitor:::tabyl.data.frame(dat = ., var1 = a, var2 = b, var3 = c, show_missing_levels = j), list(`1` = structure(list(a = c(0, 
        1), x = c(0, 1), y = c(1, 0)), row.names = c(NA, -2L), core = structure(list(a = c(0, 1), x = c(0, 1), y = c(1, 0)), 
        row.names = c(NA, -2L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "a", col = "b"), class = c("tabyl", 
        "data.frame")), `2` = structure(list(a = 1, y = 1), row.names = c(NA, -1L), core = structure(list(a = 1, y = 1), 
        row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "a", col = "b"), class = c("tabyl", 
        "data.frame"))))
})
