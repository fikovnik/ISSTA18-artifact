library(testthat)

.Random.seed <<- .ext.seed

test_that("direct.sum", {
    d2 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L), .Label = c("0", "1", "2"), class = "factor"), 
        D = structure(c(1L, 3L, 2L, 2L, 1L, 3L, 3L, 2L, 1L), .Label = c("0", "1", "2"), class = "factor"), E = structure(c(1L, 
            2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), .Label = c("0", "1", "2"), class = "factor")), row.names = c(NA, -9L), class = "data.frame")
    d1 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 
        2L, 2L, 1L, 2L, 1L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 2L, 1L, 2L, 1L, 2L, 1L, 
        2L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), 
        class = "factor")), row.names = c(NA, -8L), class = "data.frame")
    expect_equal(conf.design:::direct.sum(D1 = subset(d1, Blocks == "0"), d2), structure(list(Blocks = structure(c(1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("0", 
        "1"), class = "factor"), B = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), 
        C = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
            2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), Blocksa = structure(c(1L, 
            1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L, 1L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L, 1L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L, 1L, 1L, 
            1L, 2L, 2L, 2L, 3L, 3L, 3L), .Label = c("0", "1", "2"), class = "factor"), D = structure(c(1L, 3L, 2L, 2L, 1L, 
            3L, 3L, 2L, 1L, 1L, 3L, 2L, 2L, 1L, 3L, 3L, 2L, 1L, 1L, 3L, 2L, 2L, 1L, 3L, 3L, 2L, 1L, 1L, 3L, 2L, 2L, 1L, 3L, 
            3L, 2L, 1L), .Label = c("0", "1", "2"), class = "factor"), E = structure(c(1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 
            1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), 
            .Label = c("0", "1", "2"), class = "factor")), row.names = c(" 1", " 2", " 3", " 4", " 5", " 6", " 7", " 8", 
        " 9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", 
        "28", "29", "30", "31", "32", "33", "34", "35", "36"), class = "data.frame"))
})
