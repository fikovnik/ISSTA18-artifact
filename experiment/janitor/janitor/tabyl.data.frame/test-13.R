library(testthat)

.Random.seed <<- .ext.seed

test_that("tabyl.data.frame", {
    all_na_df <- structure(list(a = c(NA, NA), b = structure(c(NA_integer_, NA_integer_), .Label = character(0), class = "factor")), 
        row.names = c(NA, -2L), class = "data.frame")
    expect_equal(janitor:::tabyl.data.frame(dat = all_na_df, var1 = a, var2 = b, show_na = FALSE), structure(list(a = logical(0)), 
        row.names = c(NA, 0L), class = c("tbl_df", "tbl", "data.frame")))
})
