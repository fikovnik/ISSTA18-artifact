library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_rounding", {
    rounding <- "half up"
    numeric_cols <- 2:3
    digits <- 2
    dat <- structure(list(cyl = c(4, 6, 8), `0` = c(0, 0, 0), `1` = c(200, 100, 200)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 
        6, 8), `0` = c(0, 0, 0), `1` = c(2, 1, 2)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", 
        var_names = list(row = "cyl", col = "am"), class = c("tabyl", "data.frame"))
    expect_equal(janitor:::adorn_rounding(dat = dat[numeric_cols], digits = digits, rounding = rounding, skip_first_col = FALSE), 
        structure(list(`0` = c(0, 0, 0), `1` = c(200, 100, 200)), row.names = c(NA, -3L), class = c("tabyl", "data.frame")))
})
