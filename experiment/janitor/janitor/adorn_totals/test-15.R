library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_totals", {
    . <- structure(list(x = c(1, 2), y = c(NA, 4)), row.names = c(NA, -2L), class = "data.frame")
    expect_equal(janitor:::adorn_totals(dat = ., where = c("row", "col"), na.rm = FALSE), structure(list(x = c("1", "2", 
        "Total"), y = c(NA, 4, NA), Total = c(NA, 4, NA)), row.names = c(NA, 3L), core = structure(list(x = c(1, 2), y = c(NA, 
        4)), row.names = c(NA, -2L), class = "data.frame"), tabyl_type = "two_way", totals = c("row", "col"), class = c("tabyl", 
        "data.frame")))
})
