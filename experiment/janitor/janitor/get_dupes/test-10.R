library(testthat)

.Random.seed <<- .ext.seed

test_that("get_dupes", {
    test_df <- structure(list(a = c(1, 3, 3, 3, 5), b = c("a", "c", "c", "e", "c")), row.names = c(NA, -5L), class = "data.frame")
    expect_equal(janitor:::get_dupes(dat = test_df), structure(list(a = c(3, 3), b = c("c", "c"), dupe_count = c(2L, 2L)), 
        class = c("tbl_df", "tbl", "data.frame"), row.names = c(NA, -2L)))
})
