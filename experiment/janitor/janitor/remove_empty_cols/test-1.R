library(testthat)

.Random.seed <<- .ext.seed

test_that("remove_empty_cols", {
    . <- structure(list(a = c(NA, NA, 1), b = c(NA, 1, NA), c = c(NA, NA, NA)), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(janitor:::remove_empty_cols(dat = .), structure(list(a = c(NA, NA, 1), b = c(NA, 1, NA)), row.names = c(NA, 
        -3L), class = "data.frame"))
})
