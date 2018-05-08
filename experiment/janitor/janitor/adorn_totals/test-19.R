library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_totals", {
    three <- list(`3` = structure(list(cyl = c(4, 6, 8), `0` = c(1, 2, 12), `1` = c(0, 0, 0)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 
        6, 8), `0` = c(1, 2, 12), `1` = c(0, 0, 0)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", 
        var_names = list(row = "cyl", col = "am"), class = c("tabyl", "data.frame")), `4` = structure(list(cyl = c(4, 6, 
        8), `0` = c(2, 2, 0), `1` = c(6, 2, 0)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(2, 
        2, 0), `1` = c(6, 2, 0)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", 
        col = "am"), class = c("tabyl", "data.frame")), `5` = structure(list(cyl = c(4, 6, 8), `0` = c(0, 0, 0), `1` = c(2, 
        1, 2)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(0, 0, 0), `1` = c(2, 1, 2)), row.names = c(NA, 
        -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), class = c("tabyl", 
        "data.frame")))
    expect_equal(janitor:::adorn_totals(dat = three), list(`3` = structure(list(cyl = c("4", "6", "8", "Total"), `0` = c(1, 
        2, 12, 15), `1` = c(0, 0, 0, 0)), row.names = c(NA, 4L), core = structure(list(cyl = c(4, 6, 8), `0` = c(1, 2, 12), 
        `1` = c(0, 0, 0)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", 
        col = "am"), totals = "row", class = c("tabyl", "data.frame")), `4` = structure(list(cyl = c("4", "6", "8", "Total"), 
        `0` = c(2, 2, 0, 4), `1` = c(6, 2, 0, 8)), row.names = c(NA, 4L), core = structure(list(cyl = c(4, 6, 8), `0` = c(2, 
        2, 0), `1` = c(6, 2, 0)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", 
        col = "am"), totals = "row", class = c("tabyl", "data.frame")), `5` = structure(list(cyl = c("4", "6", "8", "Total"), 
        `0` = c(0, 0, 0, 0), `1` = c(2, 1, 2, 5)), row.names = c(NA, 4L), core = structure(list(cyl = c(4, 6, 8), `0` = c(0, 
        0, 0), `1` = c(2, 1, 2)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", 
        col = "am"), totals = "row", class = c("tabyl", "data.frame"))))
})
