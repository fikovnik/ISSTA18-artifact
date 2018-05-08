library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_crosstab", {
    . <- structure(list(carb = c(1, 2, 3, 4, 6, 8), `3` = c(3, 4, 3, 5, 0, 0), `4` = c(4, 4, 0, 4, 0, 0), `5` = c(0, 2, 0, 
        1, 1, 1)), row.names = c(NA, -6L), class = c("tabyl", "data.frame"), core = structure(list(carb = c(1, 2, 3, 4, 6, 
        8), `3` = c(3, 4, 3, 5, 0, 0), `4` = c(4, 4, 0, 4, 0, 0), `5` = c(0, 2, 0, 1, 1, 1)), row.names = c(NA, -6L), class = "data.frame"), 
        tabyl_type = "two_way", var_names = list(row = "carb", col = "gear"))
    expect_equal(janitor:::adorn_crosstab(dat = ., denom = "row", show_n = FALSE, digits = 3), structure(list(carb = c("1", 
        "2", "3", "4", "6", "8"), `3` = c("42.857%", "40.000%", "100.000%", "50.000%", "0.000%", "0.000%"), `4` = c("57.143%", 
        "40.000%", "0.000%", "40.000%", "0.000%", "0.000%"), `5` = c("0.000%", "20.000%", "0.000%", "10.000%", "100.000%", 
        "100.000%")), class = "data.frame", row.names = c(NA, -6L)))
})
