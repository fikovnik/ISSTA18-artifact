library(testthat)

.Random.seed <<- .ext.seed

test_that("forceNetwork", {
    karate_d3 <- list(links = structure(list(source = c(0, 0, 1, 0, 1, 2, 0, 0, 0, 5, 4, 0, 1, 3, 2, 2, 0, 2, 5, 4, 0, 0, 
        0, 3, 3, 2, 0, 1, 5, 6, 0, 1, 1, 0, 1, 0, 23, 24, 23, 24, 2, 2, 26, 23, 8, 1, 0, 28, 25, 24, 20, 8, 15, 2, 22, 31, 
        14, 30, 29, 23, 18, 9, 8, 28, 20, 14, 30, 15, 18, 19, 26, 27, 22, 13, 29, 23, 31, 32), target = c(1, 2, 2, 3, 3, 
        3, 4, 5, 6, 6, 6, 7, 7, 7, 7, 8, 8, 9, 10, 10, 10, 11, 12, 12, 13, 13, 13, 13, 16, 16, 17, 17, 19, 19, 21, 21, 25, 
        25, 27, 27, 27, 28, 29, 29, 30, 30, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 33, 33, 33, 33, 33, 
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33)), class = "data.frame", row.names = c(NA, -78L)), nodes = structure(list(name = structure(c(1L, 
        12L, 23L, 29L, 30L, 31L, 32L, 33L, 34L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 13L, 14L, 15L, 16L, 17L, 18L, 19L, 
        20L, 21L, 22L, 24L, 25L, 26L, 27L, 28L), .Label = c("1", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", 
        "2", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "3", "30", "31", "32", "33", "34", "4", "5", "6", 
        "7", "8", "9"), class = "factor"), group = c(1, 1, 2, 1, 5, 5, 5, 1, 2, 2, 5, 1, 1, 2, 3, 3, 5, 1, 3, 1, 3, 1, 3, 
        4, 4, 4, 3, 4, 2, 3, 2, 2, 3, 3)), row.names = c(NA, -34L), class = "data.frame"))
    expect_equal(networkD3:::forceNetwork(Links = karate_d3$links, Nodes = karate_d3$nodes, Source = "source", Target = "target", 
        NodeID = "name", Group = "group"), structure(list(x = list(links = structure(list(source = c(0, 0, 1, 0, 1, 2, 0, 
        0, 0, 5, 4, 0, 1, 3, 2, 2, 0, 2, 5, 4, 0, 0, 0, 3, 3, 2, 0, 1, 5, 6, 0, 1, 1, 0, 1, 0, 23, 24, 23, 24, 2, 2, 26, 
        23, 8, 1, 0, 28, 25, 24, 20, 8, 15, 2, 22, 31, 14, 30, 29, 23, 18, 9, 8, 28, 20, 14, 30, 15, 18, 19, 26, 27, 22, 
        13, 29, 23, 31, 32), target = c(1, 2, 2, 3, 3, 3, 4, 5, 6, 6, 6, 7, 7, 7, 7, 8, 8, 9, 10, 10, 10, 11, 12, 12, 13, 
        13, 13, 13, 16, 16, 17, 17, 19, 19, 21, 21, 25, 25, 27, 27, 27, 28, 29, 29, 30, 30, 31, 31, 31, 31, 32, 32, 32, 32, 
        32, 32, 32, 32, 32, 32, 32, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33), colour = c("#666", 
        "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", 
        "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", 
        "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", 
        "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", 
        "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666", 
        "#666", "#666")), row.names = c(NA, -78L), class = "data.frame"), nodes = structure(list(name = structure(c(1L, 12L, 
        23L, 29L, 30L, 31L, 32L, 33L, 34L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 13L, 14L, 15L, 16L, 17L, 18L, 19L, 20L, 
        21L, 22L, 24L, 25L, 26L, 27L, 28L), .Label = c("1", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "2", 
        "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "3", "30", "31", "32", "33", "34", "4", "5", "6", "7", 
        "8", "9"), class = "factor"), group = c(1, 1, 2, 1, 5, 5, 5, 1, 2, 2, 5, 1, 1, 2, 3, 3, 5, 1, 3, 1, 3, 1, 3, 4, 4, 
        4, 3, 4, 2, 3, 2, 2, 3, 3)), row.names = c(NA, -34L), class = "data.frame"), options = list(NodeID = "name", Group = "group", 
        colourScale = "d3.scaleOrdinal(d3.schemeCategory20);", fontSize = 7, fontFamily = "serif", clickTextSize = 17.5, 
        linkDistance = 50, linkWidth = "function(d) { return Math.sqrt(d.value); }", charge = -30, opacity = 0.6, zoom = FALSE, 
        legend = FALSE, arrows = FALSE, nodesize = FALSE, radiusCalculation = " Math.sqrt(d.nodesize)+6", bounded = FALSE, 
        opacityNoHover = 0, clickAction = NULL)), width = NULL, height = NULL, sizingPolicy = list(defaultWidth = NULL, defaultHeight = NULL, 
        padding = 10, viewer = list(defaultWidth = NULL, defaultHeight = NULL, padding = NULL, fill = TRUE, suppress = FALSE, 
            paneHeight = NULL), browser = list(defaultWidth = NULL, defaultHeight = NULL, padding = NULL, fill = TRUE, external = FALSE), 
        knitr = list(defaultWidth = NULL, defaultHeight = NULL, figure = TRUE)), dependencies = NULL, elementId = NULL, preRenderHook = NULL, 
        jsHooks = list()), class = c("forceNetwork", "htmlwidget"), package = "networkD3"))
})
