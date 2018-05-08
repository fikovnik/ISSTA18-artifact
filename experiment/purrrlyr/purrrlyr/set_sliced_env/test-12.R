library(testthat)

.Random.seed <<- .ext.seed

test_that("set_sliced_env", {
    .d <- structure(list(disp = c(160, 160, 108, 258, 360, 225, 360, 146.7, 140.8, 167.6, 167.6, 275.8, 275.8, 275.8, 472, 
        460, 440, 78.7, 75.7, 71.1, 120.1, 318, 304, 350, 400, 79, 120.3, 95.1, 351, 145, 301, 121)), row.names = c(NA, -32L), 
        class = c("tbl_df", "tbl", "data.frame"), indices = list(c(4L, 6L, 11L, 12L, 13L, 14L, 15L, 16L, 21L, 22L, 23L, 24L), 
            c(0L, 1L, 26L, 28L, 29L, 30L), c(3L, 5L, 7L, 8L, 9L, 10L, 20L), c(2L, 17L, 18L, 19L, 25L, 27L, 31L)))
    expect_equal(purrrlyr:::set_sliced_env(df = .d, labels = TRUE, collate = "rows", to = "", env = environment(), x_name = ".d"), 
        list(c(4L, 6L, 11L, 12L, 13L, 14L, 15L, 16L, 21L, 22L, 23L, 24L), c(0L, 1L, 26L, 28L, 29L, 30L), c(3L, 5L, 7L, 8L, 
            9L, 10L, 20L), c(2L, 17L, 18L, 19L, 25L, 27L, 31L)))
})
