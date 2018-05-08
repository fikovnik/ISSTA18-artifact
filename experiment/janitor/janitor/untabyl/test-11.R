library(testthat)

.Random.seed <<- .ext.seed

test_that("untabyl", {
    source2 <- structure(list(cyl = c("4", "6", "8", "Total"), `0` = c(3, 4, 12, 19), `1` = c(8, 3, 2, 13), Total = c(11, 
        7, 14, 32)), row.names = c(NA, 4L), core = structure(list(cyl = c(4, 6, 8), `0` = c(3, 4, 12), `1` = c(8, 3, 2)), 
        row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "cyl", col = "am"), 
        totals = c("row", "col"), class = c("tabyl", "data.frame"))
    adorn_percentages <- janitor::adorn_percentages
    expect_equal(janitor:::untabyl(dat = adorn_percentages(source2, denom = "row")), structure(list(cyl = c("4", "6", "8", 
        "Total"), `0` = c(0.272727272727273, 0.571428571428571, 0.857142857142857, 0.59375), `1` = c(0.727272727272727, 0.428571428571429, 
        0.142857142857143, 0.40625), Total = c(1, 1, 1, 1)), row.names = c(NA, 4L), class = "data.frame"))
})
