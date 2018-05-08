library(testthat)

.Random.seed <<- .ext.seed

test_that("tabyl.data.frame", {
    new <- methods::new
    . <- structure(list(a = structure(1L, .Label = c("hi", "lo"), class = "factor"), b = structure(2L, .Label = c("big", 
        "small"), class = "factor"), new = structure(1L, .Label = c("lvl1", "lvl2"), class = "factor")), row.names = c(NA, 
        -1L), class = c("tbl_df", "tbl", "data.frame"))
    expect_equal(janitor:::tabyl.data.frame(dat = ., var1 = a, var2 = b, var3 = new, show_missing_levels = FALSE), list(lvl1 = structure(list(a = structure(1L, 
        .Label = c("hi", "lo"), class = "factor"), small = 1), row.names = c(NA, -1L), core = structure(list(a = structure(1L, 
        .Label = c("hi", "lo"), class = "factor"), small = 1), row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", 
        var_names = list(row = "a", col = "b"), class = c("tabyl", "data.frame"))))
})
