library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_pct_formatting", {
    . <- structure(list(carb = c(1, 2, 3, 4, 6, 8), n = c(7, 10, 3, 10, 1, 1), percent = c(0.21875, 0.3125, 0.09375, 0.3125, 
        0.03125, 0.03125)), row.names = c(NA, -6L), class = c("tabyl", "data.frame"), core = structure(list(carb = c(1, 2, 
        3, 4, 6, 8), n = c(7, 10, 3, 10, 1, 1), percent = c(0.21875, 0.3125, 0.09375, 0.3125, 0.03125, 0.03125)), row.names = c(NA, 
        -6L), class = "data.frame"), tabyl_type = "one_way")
    expect_equal(janitor:::adorn_pct_formatting(dat = ., digits = 0), structure(list(carb = c(1, 2, 3, 4, 6, 8), n = c(7, 
        10, 3, 10, 1, 1), percent = c("22%", "31%", "9%", "31%", "3%", "3%")), row.names = c(NA, -6L), core = structure(list(carb = c(1, 
        2, 3, 4, 6, 8), n = c(7, 10, 3, 10, 1, 1), percent = c(0.21875, 0.3125, 0.09375, 0.3125, 0.03125, 0.03125)), row.names = c(NA, 
        -6L), class = "data.frame"), tabyl_type = "one_way", class = c("tabyl", "data.frame")))
})
