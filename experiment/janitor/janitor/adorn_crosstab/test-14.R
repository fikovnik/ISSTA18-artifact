library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_crosstab", {
    source1 <- structure(list(gear = c(3, 4, 5), `4` = c(1, 8, 2), `6` = c(2, 4, 1), `8` = c(12, 0, 2)), row.names = c(NA, 
        -3L), class = c("tabyl", "data.frame"), core = structure(list(gear = c(3, 4, 5), `4` = c(1, 8, 2), `6` = c(2, 4, 
        1), `8` = c(12, 0, 2)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "gear", 
        col = "cyl"))
    expect_equal(janitor:::adorn_crosstab(dat = source1, denom = "col", show_totals = TRUE), structure(list(gear = c("3", 
        "4", "5"), `4` = c("9.1% (1)", "72.7% (8)", "18.2% (2)"), `6` = c("28.6% (2)", "57.1% (4)", "14.3% (1)"), `8` = c("85.7% (12)", 
        "0.0%  (0)", "14.3%  (2)"), Total = c("46.9% (15)", "37.5% (12)", "15.6%  (5)")), class = "data.frame", row.names = c(NA, 
        -3L)))
})
