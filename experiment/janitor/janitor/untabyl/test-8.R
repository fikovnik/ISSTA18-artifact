library(testthat)

.Random.seed <<- .ext.seed

test_that("untabyl", {
    source2 <- structure(list(cyl = c(4, 6, 8), `0` = c(3, NA, 12), `1` = c(8, 3, 2)), row.names = c(NA, -3L), core = structure(list(cyl = c(4, 
        6, 8), `0` = c(3, 4, 12), `1` = c(8, 3, 2)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", 
        var_names = list(row = "cyl", col = "am"), class = c("tabyl", "data.frame"))
    adorn_percentages <- janitor::adorn_percentages
    expect_equal(janitor:::untabyl(dat = adorn_percentages(source2, denom = "col")), structure(list(cyl = c(4, 6, 8), `0` = c(0.2, 
        NA, 0.8), `1` = c(0.615384615384615, 0.230769230769231, 0.153846153846154)), row.names = c(NA, -3L), class = "data.frame"))
})
