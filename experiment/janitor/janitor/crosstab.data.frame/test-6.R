library(testthat)

.Random.seed <<- .ext.seed

test_that("crosstab.data.frame", {
    . <- structure(list(a = c(1, 1), b = c("x", NA)), row.names = c(NA, -2L), class = "data.frame")
    expect_equal(janitor:::crosstab.data.frame(.data = ., a, b), structure(list(a = 1, x = 1, NA_ = 1), row.names = c(NA, 
        -1L), class = c("tabyl", "data.frame"), core = structure(list(a = 1, x = 1, NA_ = 1), row.names = c(NA, -1L), class = "data.frame"), 
        tabyl_type = "two_way"))
})
