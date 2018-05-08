library(testthat)

.Random.seed <<- .ext.seed

test_that("handle_if_special_names_used", {
    result <- structure(list(percent = c(0.03125, 0.0625), n = c(18, 7), percent = c(0.72, 0.28)), class = c("tbl_df", "tbl", 
        "data.frame"), row.names = c(NA, -2L))
    expect_equal(janitor:::handle_if_special_names_used(dat = result), structure(list(percent = c(0.03125, 0.0625), n = c(18, 
        7), percent_percent = c(0.72, 0.28)), class = c("tbl_df", "tbl", "data.frame"), row.names = c(NA, -2L)))
})
