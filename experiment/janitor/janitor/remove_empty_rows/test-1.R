library(testthat)

.Random.seed <<- .ext.seed

test_that("remove_empty_rows", {
    . <- structure(list(a = c(NA, NA, 1), b = c(NA, 1, NA), c = c(NA, NA, NA)), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(janitor:::remove_empty_rows(dat = .), structure(list(a = c(NA, 1), b = c(1, NA), c = c(NA, NA)), row.names = 2:3, 
        class = "data.frame"))
})
