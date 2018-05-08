library(testthat)

.Random.seed <<- .ext.seed

test_that("plot.rivernet", {
    net <- structure(list(reaches = list(`1` = list(n = 2L, x = c(5L, 5L), y = c(0L, 2L), z = 0:1, length = 2), `2` = list(n = 5L, 
        x = c(5L, 7L, 8L, 9L, 10L), y = c(2L, 4L, 7L, 6L, 8L), z = 1:5, length = 9.64098632478746), `3` = list(n = 2L, x = c(5L, 
        0L), y = c(2L, 6L), z = 1:2, length = 6.40312423743285), `4` = list(n = 2L, x = c(0L, 2L), y = 6:7, z = 2:3, length = 2.23606797749979)), 
        nodes = list(`1` = list(x = 5, y = 0), `2` = list(x = 5, y = 2), `3` = list(x = 10, y = 8), `4` = list(x = 0, y = 6), 
            `5` = list(x = 2, y = 7)), xlim = c(0L, 10L), ylim = c(0L, 8L), zlim = c(0L, 5L), htow = 0.8, total.length = 20.2801785397201, 
        colnames = structure(c("Reach_ID", "Node_ID", "X", "Y", "Z"), names = c("reach", "node", "x", "y", "z")), attrib.reach = structure(list(Reach = 1:4, 
            Reach_ID = structure(1:4, .Label = c("1", "2", "3", "4"), class = "factor"), x_start = c(5L, 5L, 5L, 0L), y_start = c(0L, 
                2L, 2L, 6L), z_start = c(0L, 1L, 1L, 2L), x_end = c(5L, 10L, 0L, 2L), y_end = c(2L, 8L, 6L, 7L), z_end = c(1L, 
                5L, 2L, 3L), node_start = c(1, 2, 2, 4), node_end = c(2, 3, 4, 5), length = c(2, 9.64098632478746, 6.40312423743285, 
                2.23606797749979), State = c(0, 0.2, 0.8, 0.8), Flow = c(4L, 2L, 2L, 2L)), row.names = c("1", "2", "3", "4"), 
            class = "data.frame"), attrib.node = structure(list(Node = 1:5, Node_ID = 1:5, x = c(5, 5, 10, 0, 2), y = c(0, 
            2, 8, 6, 7), X = c(5L, 5L, 10L, 0L, 2L), Y = c(0L, 2L, 8L, 6L, 7L), Height = c(0L, 0L, 0L, 1L, 0L)), row.names = c(NA, 
            5L), class = "data.frame"), read.nodeattrib.none = structure(list(index = numeric(0), x = numeric(0), y = numeric(0)), 
            row.names = integer(0), class = "data.frame"), read.nodeattrib.multiple = list()), class = "rivernet")
    expect_equal(rivernet:::plot.rivernet(x = net, col = ifelse(net$attrib.reach$State < 0.5, "red", "blue"), pch.nodes = 19, 
        cex.nodes = 1.5, col.nodes = ifelse(net$attrib.node$Height < 0.1, "black", "red"), lwd = 2), NULL)
})
