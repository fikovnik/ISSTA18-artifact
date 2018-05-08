library(testthat)

.Random.seed <<- .ext.seed

test_that("convert_to_NA", {
    test_df <- structure(list(v1 = c(1, NA, 3), v_fac = structure(c(1L, 1L, 2L), .Label = c("a", "b"), class = "factor"), 
        v2 = c("NA", "#NAME?", "n/a")), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(janitor:::convert_to_NA(dat = test_df, strings = c("NA", "#NAME?", "N/A", "n/a", 1, "a")), structure(list(v1 = c(NA, 
        NA, 3), v_fac = structure(c(NA, NA, 2L), .Label = c("a", "b"), class = "factor"), v2 = c(NA_character_, NA_character_, 
        NA_character_)), row.names = c(NA, -3L), class = "data.frame"))
})
