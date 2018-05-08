library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_pct_formatting", {
    has_nas <- structure(list(a = c("big", "little"), x = c(0.1, 0.123), y = c(0.98, NA)), row.names = c(NA, -2L), class = "data.frame")
    expect_equal(janitor:::adorn_pct_formatting(dat = has_nas), structure(list(a = c("big", "little"), x = c("10.0%", "12.3%"), 
        y = c("98.0%", "-")), row.names = c(NA, -2L), class = "data.frame"))
})
