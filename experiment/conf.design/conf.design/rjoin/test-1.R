library(testthat)

.Random.seed <<- .ext.seed

test_that("rjoin", {
    d2 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 
        2L, 1L, 2L, 1L, 2L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 1L, 2L, 2L, 2L, 2L, 1L, 
        1L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), 
        class = "factor")), row.names = c(NA, -8L), class = "data.frame")
    d1 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 
        2L, 2L, 1L, 2L, 1L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 2L, 1L, 2L, 1L, 2L, 1L, 
        2L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), 
        class = "factor")), row.names = c(NA, -8L), class = "data.frame")
    expect_equal(conf.design:::rjoin(d1, d2), structure(list(Part = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L), .Label = c("Part1", "Part2"), class = "factor"), Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 
        2L, 2L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 2L, 2L, 1L, 
        2L, 1L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 2L, 
        1L, 2L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 1L, 1L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 
        1L, 2L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), class = "factor")), row.names = c(NA, 
        -16L), class = "data.frame"))
})
