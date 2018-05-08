library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_crosstab", {
    . <- structure(list(cyl = c(4, 6, 8), `0` = c(3, 4, 12), `1` = c(8, 3, 2)), row.names = c(NA, -3L), class = c("tabyl", 
        "data.frame"), core = structure(list(cyl = c(4, 6, 8), `0` = c(3, 4, 12), `1` = c(8, 3, 2)), row.names = c(NA, -3L), 
        class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"))
    expect_equal(janitor:::adorn_crosstab(dat = ., denom = "all", digits = 0, rounding = "half up"), structure(list(cyl = c("4", 
        "6", "8"), `0` = c("9%  (3)", "13%  (4)", "38% (12)"), `1` = c("25% (8)", "9% (3)", "6% (2)")), class = "data.frame", 
        row.names = c(NA, -3L)))
})
