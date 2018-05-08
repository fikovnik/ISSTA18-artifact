library(testthat)

.Random.seed <<- .ext.seed

test_that("crosstab.default", {
    expect_equal(janitor:::crosstab.default(vec1 = structure(list(v2 = c(2, 3, 4, 3, 3, 3, 3, 3, 2)), row.names = c(NA, -9L), 
        class = "data.frame"), vec2 = structure(list(v4 = c("x", "y", "z", "x", "y", "z", "x", "y", "z")), row.names = c(NA, 
        -9L), class = "data.frame"), percent = "row"), structure(list(v2 = c(2, 3, 4), x = c(0.5, 0.333333333333333, 0), 
        y = c(0, 0.5, 0), z = c(0.5, 0.166666666666667, 1)), row.names = c(NA, -3L), class = c("tabyl", "data.frame"), core = structure(list(v2 = c(2, 
        3, 4), x = c(0.5, 0.333333333333333, 0), y = c(0, 0.5, 0), z = c(0.5, 0.166666666666667, 1)), row.names = c(NA, -3L), 
        class = "data.frame"), tabyl_type = "two_way"))
})
