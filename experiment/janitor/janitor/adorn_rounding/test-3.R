library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_rounding", {
    . <- structure(list(am = c(0, 1), `4` = c(0.09375, 0.25), `6` = c(0.125, 0.09375), `8` = c(0.375, 0.0625), dummy = c("a", 
        "a")), class = "data.frame", row.names = c(NA, -2L))
    expect_equal(janitor:::adorn_rounding(dat = .), structure(list(am = c(0, 1), `4` = c(0.1, 0.2), `6` = c(0.1, 0.1), `8` = c(0.4, 
        0.1), dummy = c("a", "a")), row.names = c(NA, -2L), class = "data.frame"))
})
