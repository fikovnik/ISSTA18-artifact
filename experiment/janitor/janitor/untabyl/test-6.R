library(testthat)

.Random.seed <<- .ext.seed

test_that("untabyl", {
    ct <- structure(list(a = structure(1:2, .Label = c("big", "small"), class = "factor"), `1` = c(4, 1), `2` = c(0, 2), 
        `3` = c(2, 0)), row.names = c(NA, -2L), class = c("tabyl", "data.frame"), core = structure(list(a = structure(1:2, 
        .Label = c("big", "small"), class = "factor"), `1` = c(4, 1), `2` = c(0, 2), `3` = c(2, 0)), row.names = c(NA, -2L), 
        class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "a", col = "b"))
    adorn_totals <- janitor::adorn_totals
    expect_equal(janitor:::untabyl(dat = adorn_totals(ct, "row")), structure(list(a = c("big", "small", "Total"), `1` = c(4, 
        1, 5), `2` = c(0, 2, 2), `3` = c(2, 0, 2)), row.names = c(NA, 3L), class = "data.frame"))
})
