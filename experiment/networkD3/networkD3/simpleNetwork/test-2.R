library(testthat)

.Random.seed <<- .ext.seed

test_that("simpleNetwork", {
    NetworkData <- structure(list(Source = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 3L, 3L, 4L), .Label = c("A", "B", "C", "D"), 
        class = "factor"), Target = structure(c(1L, 2L, 3L, 9L, 4L, 5L, 6L, 7L, 8L), .Label = c("B", "C", "D", "E", "F", 
        "G", "H", "I", "J"), class = "factor")), row.names = c(NA, -9L), class = "data.frame")
    expect_equal(networkD3:::simpleNetwork(Data = NetworkData), structure(list(x = list(links = structure(list(source = c(0, 
        0, 0, 0, 1, 1, 2, 2, 3), target = c(1, 2, 3, 9, 4, 5, 6, 7, 8), value = c(1, 1, 1, 1, 1, 1, 1, 1, 1), colour = c("#666", 
        "#666", "#666", "#666", "#666", "#666", "#666", "#666", "#666")), row.names = c(NA, -9L), class = "data.frame"), 
        nodes = structure(list(name = structure(1:10, .Label = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"), class = "factor"), 
            group = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1), nodesize = c(8, 8, 8, 8, 8, 8, 8, 8, 8, 8)), row.names = c(NA, -10L), 
            class = "data.frame"), options = list(NodeID = "name", Group = "group", colourScale = "d3.scaleOrdinal(['#3182bd'])", 
            fontSize = 7, fontFamily = "serif", clickTextSize = 17.5, linkDistance = 50, linkWidth = "'1.5px'.toString()", 
            charge = -30, opacity = 0.6, zoom = FALSE, legend = FALSE, arrows = FALSE, nodesize = TRUE, radiusCalculation = "d.nodesize", 
            bounded = FALSE, opacityNoHover = 1, clickAction = NULL)), width = NULL, height = NULL, sizingPolicy = list(defaultWidth = NULL, 
        defaultHeight = NULL, padding = 10, viewer = list(defaultWidth = NULL, defaultHeight = NULL, padding = NULL, fill = TRUE, 
            suppress = FALSE, paneHeight = NULL), browser = list(defaultWidth = NULL, defaultHeight = NULL, padding = NULL, 
            fill = TRUE, external = FALSE), knitr = list(defaultWidth = NULL, defaultHeight = NULL, figure = TRUE)), dependencies = NULL, 
        elementId = NULL, preRenderHook = NULL, jsHooks = list()), class = c("forceNetwork", "htmlwidget"), package = "networkD3"))
})
