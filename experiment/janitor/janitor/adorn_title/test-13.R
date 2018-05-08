library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_title", {
    three <- list(`3` = structure(list(cyl = c(4, 6, 8), `0` = c("100.0%", "100.0%", "100.0%"), `1` = c("0.0%", "0.0%", "0.0%")), 
        row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(1, 2, 12), `1` = c(0, 0, 0)), row.names = c(NA, 
            -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), class = c("tabyl", 
            "data.frame")), `4` = structure(list(cyl = c(4, 6, 8), `0` = c("25.0%", "50.0%", "-"), `1` = c("75.0%", "50.0%", 
        "-")), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(2, 2, 0), `1` = c(6, 2, 0)), row.names = c(NA, 
        -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), class = c("tabyl", 
        "data.frame")), `5` = structure(list(cyl = c(4, 6, 8), `0` = c("0.0%", "0.0%", "0.0%"), `1` = c("100.0%", "100.0%", 
        "100.0%")), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 6, 8), `0` = c(0, 0, 0), `1` = c(2, 1, 2)), 
        row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), 
        class = c("tabyl", "data.frame")))
    expect_equal(janitor:::adorn_title(dat = three), list(`3` = structure(list(c("cyl", "4", "6", "8"), am = c("0", "100.0%", 
        "100.0%", "100.0%"), c("1", "0.0%", "0.0%", "0.0%")), row.names = c(NA, -4L), class = c("tabyl", "data.frame")), 
        `4` = structure(list(c("cyl", "4", "6", "8"), am = c("0", "25.0%", "50.0%", "-"), c("1", "75.0%", "50.0%", "-")), 
            row.names = c(NA, -4L), class = c("tabyl", "data.frame")), `5` = structure(list(c("cyl", "4", "6", "8"), am = c("0", 
            "0.0%", "0.0%", "0.0%"), c("1", "100.0%", "100.0%", "100.0%")), row.names = c(NA, -4L), class = c("tabyl", "data.frame"))))
})
