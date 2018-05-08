library(testthat)

.Random.seed <<- .ext.seed

test_that("untabyl", {
    y2 <- structure(list(`dat$v3` = c("a", "b"), hi = c(1, 1), med = c(1, 2), lo = c(2, 0)), row.names = 1:2, class = c("tabyl", 
        "data.frame"))
    expect_equal(janitor:::untabyl(dat = y2), structure(list(`dat$v3` = c("a", "b"), hi = c(1, 1), med = c(1, 2), lo = c(2, 
        0)), row.names = 1:2, class = "data.frame"))
})
