library(testthat)

.Random.seed <<- .ext.seed

test_that("subset_slices", {
    .d <- structure(list(mpg = c(21, 21, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2, 17.8, 16.4, 17.3, 15.2, 10.4, 10.4, 
        14.7, 32.4, 30.4, 33.9, 21.5, 15.5, 15.2, 13.3, 19.2, 27.3, 26, 30.4, 15.8, 19.7, 15, 21.4)), row.names = c(NA, -32L), 
        class = c("tbl_df", "tbl", "data.frame"), indices = list(c(2L, 7L, 8L, 17L, 18L, 19L, 20L, 25L, 26L, 27L, 31L), c(0L, 
            1L, 3L, 5L, 9L, 10L, 29L), c(4L, 6L, 11L, 12L, 13L, 14L, 15L, 16L, 21L, 22L, 23L, 24L, 28L, 30L)))
    expect_equal(purrrlyr:::subset_slices(data = .d), list(structure(list(mpg = c(22.8, 24.4, 22.8, 32.4, 30.4, 33.9, 21.5, 
        27.3, 26, 30.4, 21.4)), row.names = c(NA, -11L), class = c("tbl_df", "tbl", "data.frame")), structure(list(mpg = c(21, 
        21, 21.4, 18.1, 19.2, 17.8, 19.7)), row.names = c(NA, -7L), class = c("tbl_df", "tbl", "data.frame")), structure(list(mpg = c(18.7, 
        14.3, 16.4, 17.3, 15.2, 10.4, 10.4, 14.7, 15.5, 15.2, 13.3, 19.2, 15.8, 15)), row.names = c(NA, -14L), class = c("tbl_df", 
        "tbl", "data.frame"))))
})
