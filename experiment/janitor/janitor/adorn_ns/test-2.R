library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_ns", {
    . <- structure(list(am = 1, new_var_name = "100.0%"), row.names = c(NA, -1L), core = structure(list(am = 1, `6` = 1), 
        row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "am", col = "cyl"), 
        class = c("tabyl", "data.frame"))
    expect_equal(janitor:::adorn_ns(dat = .), structure(list(am = 1, new_var_name = "100.0% (1)"), row.names = 1L, core = structure(list(am = 1, 
        `6` = 1), row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "am", col = "cyl"), 
        class = c("tabyl", "data.frame")))
})
