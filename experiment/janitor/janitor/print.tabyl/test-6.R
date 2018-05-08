library(testthat)

.Random.seed <<- .ext.seed

test_that("print.tabyl", {
    x <- structure(list(c("am", "0", "1"), cyl = c("4", "3", "8"), c("6", "4", "3"), c("8", "12", "2")), row.names = c(NA, 
        -3L), class = c("tabyl", "data.frame"))
    expect_equal(janitor:::print.tabyl(x = x), structure(list(c("am", "0", "1"), cyl = c("4", "3", "8"), c("6", "4", "3"), 
        c("8", "12", "2")), row.names = c(NA, -3L), class = c("tabyl", "data.frame")))
})
