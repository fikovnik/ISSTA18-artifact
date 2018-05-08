library(testthat)

.Random.seed <<- .ext.seed

test_that("tbl_df_strip", {
    Links <- structure(list(source = c(0, 0, 0, 0, 1, 1, 2, 2, 3), target = c(1, 2, 3, 9, 4, 5, 6, 7, 8), value = c(1, 1, 
        1, 1, 1, 1, 1, 1, 1)), row.names = c(NA, -9L), class = "data.frame")
    expect_equal(networkD3:::tbl_df_strip(x = Links), structure(list(source = c(0, 0, 0, 0, 1, 1, 2, 2, 3), target = c(1, 
        2, 3, 9, 4, 5, 6, 7, 8), value = c(1, 1, 1, 1, 1, 1, 1, 1, 1)), row.names = c(NA, -9L), class = "data.frame"))
})
