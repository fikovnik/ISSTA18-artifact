library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_percentages", {
    . <- list(`3` = structure(list(cyl = c(4, 6, 8), `0` = c(1, 2, 12), `1` = c(0, 0, 0)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 
        6, 8), `0` = c(1, 2, 12), `1` = c(0, 0, 0)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", 
        var_names = list(row = "cyl", col = "am"), class = c("tabyl", "data.frame")), `4` = structure(list(cyl = c(4, 6, 
        8), `0` = c(2, 2, 0), `1` = c(6, 2, 0)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(2, 
        2, 0), `1` = c(6, 2, 0)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", 
        col = "am"), class = c("tabyl", "data.frame")), `5` = structure(list(cyl = c(4, 6, 8), `0` = c(0, 0, 0), `1` = c(2, 
        1, 2)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(0, 0, 0), `1` = c(2, 1, 2)), row.names = c(NA, 
        -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), class = c("tabyl", 
        "data.frame")))
    expect_equal(janitor:::adorn_percentages(dat = .), list(`3` = structure(list(cyl = c(4, 6, 8), `0` = c(1, 1, 1), `1` = c(0, 
        0, 0)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(1, 2, 12), `1` = c(0, 0, 0)), row.names = c(NA, 
        -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), class = c("tabyl", 
        "data.frame")), `4` = structure(list(cyl = c(4, 6, 8), `0` = c(0.25, 0.5, NaN), `1` = c(0.75, 0.5, NaN)), row.names = c(NA, 
        -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(2, 2, 0), `1` = c(6, 2, 0)), row.names = c(NA, -3L), class = "data.frame"), 
        tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), class = c("tabyl", "data.frame")), `5` = structure(list(cyl = c(4, 
        6, 8), `0` = c(0, 0, 0), `1` = c(1, 1, 1)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(0, 
        0, 0), `1` = c(2, 1, 2)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", 
        col = "am"), class = c("tabyl", "data.frame"))))
})
