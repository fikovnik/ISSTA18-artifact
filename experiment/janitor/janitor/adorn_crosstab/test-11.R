library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_crosstab", {
    source1 <- structure(list(gear = c(3, 4, 5), `4` = c(1, 8, 2), `6` = c(2, 4, 1), `8` = c(12, 0, 2)), row.names = c(NA, 
        -3L), class = c("tabyl", "data.frame"), core = structure(list(gear = c(3, 4, 5), `4` = c(1, 8, 2), `6` = c(2, 4, 
        1), `8` = c(12, 0, 2)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "gear", 
        col = "cyl"))
    expect_equal(janitor:::adorn_crosstab(dat = source1, denom = "all", show_totals = TRUE), structure(list(gear = c("3", 
        "4", "5", "Total"), `4` = c("3.1%  (1)", "25.0%  (8)", "6.2%  (2)", "34.4% (11)"), `6` = c("6.2% (2)", "12.5% (4)", 
        "3.1% (1)", "21.9% (7)"), `8` = c("37.5% (12)", "0.0%  (0)", "6.2%  (2)", "43.8% (14)"), Total = c("46.9% (15)", 
        "37.5% (12)", "15.6%  (5)", "100.0% (32)")), class = "data.frame", row.names = c(NA, -4L)))
})
