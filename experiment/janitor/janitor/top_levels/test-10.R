library(testthat)

.Random.seed <<- .ext.seed

test_that("top_levels", {
    fac_odd_lvls <- structure(c(5L, 4L, 3L, 2L, 1L, NA, NA), .Label = c("e", "d", "c", "b", "a"), class = "factor")
    expect_equal(janitor:::top_levels(input_vec = fac_odd_lvls), structure(list(fac_odd_lvls = structure(1:3, .Label = c("e, d", 
        "c", "b, a"), class = "factor"), n = c(2, 1, 2), percent = c(0.4, 0.2, 0.4)), row.names = c(NA, -3L), class = c("tabyl", 
        "data.frame"), core = structure(list(new_vec = structure(1:3, .Label = c("e, d", "c", "b, a"), class = "factor"), 
        n = c(2, 1, 2), percent = c(0.4, 0.2, 0.4)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "one_way"))
})
