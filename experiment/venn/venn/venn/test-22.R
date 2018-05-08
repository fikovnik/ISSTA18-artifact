library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    x <- list(First = 1:20, Second = 10:30, Third = c(43L, 46L, 50L, 45L, 35L, 28L, 31L, 34L, 38L, 41L, 25L, 27L, 49L, 40L, 
        29L))
    expect_equal(venn:::venn(x = x), structure(list(First = c(0L, 0L, 0L, 0L, 1L, 1L, 1L, 1L), Second = c(0L, 0L, 1L, 1L, 
        0L, 0L, 1L, 1L), Third = c(0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L), counts = c(0L, 11L, 6L, 4L, 9L, 0L, 11L, 0L)), row.names = c("", 
        "Third", "Second", "Second:Third", "First", "First:Third", "First:Second", "First:Second:Third"), class = "data.frame", 
        intersections = list(Third = c(43L, 46L, 50L, 45L, 35L, 31L, 34L, 38L, 41L, 49L, 40L), Second = c(21L, 22L, 23L, 
            24L, 26L, 30L), `Second:Third` = c(25L, 27L, 28L, 29L), First = 1:9, `First:Second` = 10:20)))
})
