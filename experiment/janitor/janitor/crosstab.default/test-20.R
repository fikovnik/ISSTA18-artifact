library(testthat)

.Random.seed <<- .ext.seed

test_that("crosstab.default", {
    expect_equal(janitor:::crosstab.default(vec1 = structure(list(v3 = c("a", "a", "a", "b", "b", "b", "a", NA, NA)), row.names = c(NA, 
        -9L), class = "data.frame"), vec2 = structure(list(v1 = structure(c(1L, 3L, 3L, 2L, 1L, 2L, 2L, 2L, NA), .Label = c("hi", 
        "med", "lo"), class = "factor")), row.names = c(NA, -9L), class = "data.frame")), structure(list(v3 = c("a", "b", 
        NA), hi = c(1, 1, 0), med = c(1, 2, 1), lo = c(2, 0, 0), NA_ = c(0, 0, 1)), row.names = c(NA, -3L), class = c("tabyl", 
        "data.frame"), core = structure(list(v3 = c("a", "b", NA), hi = c(1, 1, 0), med = c(1, 2, 1), lo = c(2, 0, 0), NA_ = c(0, 
        0, 1)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way"))
})
