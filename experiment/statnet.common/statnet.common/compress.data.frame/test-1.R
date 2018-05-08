library(testthat)

.Random.seed <<- .ext.seed

test_that("compress.data.frame", {
    x <- structure(list(V1 = c(3L, 3L, 1L, 3L, 2L, 2L, 3L, 1L, 2L, 3L, 2L, 3L, 3L, 1L, 2L, 3L, 3L, 1L, 2L, 2L, 3L, 1L, 3L, 
        3L, 1L, 2L, 2L, 3L, 2L, 3L), V2 = c(2L, 2L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 
        1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 2L), V3 = c(3L, 4L, 4L, 3L, 4L, 1L, 2L, 4L, 3L, 1L, 1L, 1L, 1L, 2L, 1L, 3L, 1L, 
        2L, 3L, 1L, 3L, 1L, 2L, 3L, 4L, 3L, 1L, 1L, 1L, 2L)), row.names = c(NA, -30L), class = "data.frame")
    expect_equal(statnet.common:::compress.data.frame(x = x), list(rows = structure(list(V1 = c(1L, 1L, 1L, 2L, 2L, 2L, 2L, 
        3L, 3L, 3L, 3L, 3L, 3L, 3L), V2 = c(1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), V3 = c(1L, 4L, 2L, 1L, 
        4L, 1L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 4L)), row.names = c(22L, 3L, 14L, 11L, 5L, 6L, 9L, 12L, 7L, 21L, 10L, 30L, 1L, 
        2L), class = "data.frame"), frequencies = c(1, 3, 2, 3, 1, 3, 3, 3, 2, 1, 2, 1, 4, 1), ordering = c(26L, 30L, 2L, 
        27L, 10L, 11L, 20L, 3L, 14L, 23L, 7L, 17L, 18L, 5L, 8L, 28L, 24L, 6L, 15L, 12L, 22L, 1L, 21L, 29L, 4L, 16L, 13L, 
        19L, 9L, 25L), rownames = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", 
        "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30")))
})
