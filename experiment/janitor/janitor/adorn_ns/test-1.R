library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_ns", {
    . <- structure(list(am = c(0, 1), `4` = c("27.3%", "72.7%"), `6` = c("57.1%", "42.9%"), `8` = c("85.7%", "14.3%")), row.names = c(NA, 
        -2L), core = structure(list(am = c(0, 1), `4` = c(3, 8), `6` = c(4, 3), `8` = c(12, 2)), row.names = c(NA, -2L), 
        class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "am", col = "cyl"), class = c("tabyl", "data.frame"))
    expect_equal(janitor:::adorn_ns(dat = ., position = "front"), structure(list(am = c(0, 1), `4` = c("3 (27.3%)", "8 (72.7%)"), 
        `6` = c("4 (57.1%)", "3 (42.9%)"), `8` = c("12 (85.7%)", "2 (14.3%)")), row.names = 1:2, core = structure(list(am = c(0, 
        1), `4` = c(3, 8), `6` = c(4, 3), `8` = c(12, 2)), row.names = c(NA, -2L), class = "data.frame"), tabyl_type = "two_way", 
        var_names = list(row = "am", col = "cyl"), class = c("tabyl", "data.frame")))
})
