library(testthat)

.Random.seed <<- .ext.seed

test_that("d3SimpleNetwork", {
    NetworkData <- structure(list(Source = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 3L, 3L, 4L), .Label = c("A", "B", "C", "D"), 
        class = "factor"), Target = structure(c(1L, 2L, 3L, 9L, 4L, 5L, 6L, 7L, 8L), .Label = c("B", "C", "D", "E", "F", 
        "G", "H", "I", "J"), class = "factor")), row.names = c(NA, -9L), class = "data.frame")
    expect_equal(d3Network:::d3SimpleNetwork(Data = NetworkData, height = 300, width = 700, fontsize = 15), NULL)
})
