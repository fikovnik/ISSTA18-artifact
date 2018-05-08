library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_ns", {
    . <- structure(list(x = c("a", "b", "c", "d", "Total"), `0` = c("82.7%", "0.4%", "0.2%", "0.0%", "83.3%"), `1` = c("16.5%", 
        "0.0%", "0.0%", "0.2%", "16.7%")), row.names = c(NA, 5L), core = structure(list(x = c("a", "b", "c", "d"), `0` = c(417, 
        2, 1, 0), `1` = c(83, 0, 0, 1)), row.names = c(NA, -4L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "x", 
        col = "y"), totals = "row", class = c("tabyl", "data.frame"))
    expect_equal(janitor:::adorn_ns(dat = .), structure(list(x = c("a", "b", "c", "d", "Total"), `0` = c("82.7% (417)", "0.4%   (2)", 
        "0.2%   (1)", "0.0%   (0)", "83.3% (420)"), `1` = c("16.5% (83)", "0.0%  (0)", "0.0%  (0)", "0.2%  (1)", "16.7% (84)")), 
        row.names = c(NA, 5L), core = structure(list(x = c("a", "b", "c", "d"), `0` = c(417, 2, 1, 0), `1` = c(83, 0, 0, 
            1)), row.names = c(NA, -4L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "x", col = "y"), 
        totals = "row", class = c("tabyl", "data.frame")))
})
