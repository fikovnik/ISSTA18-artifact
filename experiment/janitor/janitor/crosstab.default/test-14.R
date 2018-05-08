library(testthat)

.Random.seed <<- .ext.seed

test_that("crosstab.default", {
    dat <- structure(list(v1 = structure(c(1L, 3L, 3L, 2L, 1L, 2L, 2L, 2L, NA), .Label = c("hi", "med", "lo"), class = "factor"), 
        v2 = c(2, 3, 4, 3, 3, 3, 3, 3, 2), v3 = c("a", "a", "a", "b", "b", "b", "a", NA, NA), v4 = c("x", "y", "z", "x", 
            "y", "z", "x", "y", "z")), row.names = c(NA, -9L), class = "data.frame")
    expect_equal(janitor:::crosstab.default(vec1 = dat$v3, vec2 = dat$v1, show_na = FALSE), structure(list(`dat$v3` = c("a", 
        "b"), hi = c(1, 1), med = c(1, 2), lo = c(2, 0)), row.names = c(NA, -2L), class = c("tabyl", "data.frame"), core = structure(list(`dat$v3` = c("a", 
        "b"), hi = c(1, 1), med = c(1, 2), lo = c(2, 0)), row.names = c(NA, -2L), class = "data.frame"), tabyl_type = "two_way"))
})
