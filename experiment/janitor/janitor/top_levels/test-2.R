library(testthat)

.Random.seed <<- .ext.seed

test_that("top_levels", {
    fac <- structure(c(6L, 5L, 4L, 3L, 2L, 1L, 1L), .Label = c("f", "e", "d", "c", "b", "a"), class = "factor")
    expect_equal(janitor:::top_levels(input_vec = fac, n = 3), structure(list(fac = structure(1:2, .Label = c("f, e, d", 
        "c, b, a"), class = "factor"), n = c(4, 3), percent = c(0.571428571428571, 0.428571428571429)), row.names = c(NA, 
        -2L), class = c("tabyl", "data.frame"), core = structure(list(new_vec = structure(1:2, .Label = c("f, e, d", "c, b, a"), 
        class = "factor"), n = c(4, 3), percent = c(0.571428571428571, 0.428571428571429)), row.names = c(NA, -2L), class = "data.frame"), 
        tabyl_type = "one_way"))
})
