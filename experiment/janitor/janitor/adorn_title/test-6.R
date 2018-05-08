library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_title", {
    . <- structure(list(cyl = c(4, 6, 8), `0` = c(3, 4, 12), `1` = c(8, 3, 2)), row.names = c(NA, -3L), class = c("tabyl", 
        "data.frame"), core = structure(list(cyl = c(4, 6, 8), `0` = c(3, 4, 12), `1` = c(8, 3, 2)), row.names = c(NA, -3L), 
        class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"))
    expect_equal(janitor:::adorn_title(dat = .), structure(list(c("cyl", "4", "6", "8"), am = c("0", "3", "4", "12"), c("1", 
        "8", "3", "2")), row.names = c(NA, -4L), class = c("tabyl", "data.frame")))
})
