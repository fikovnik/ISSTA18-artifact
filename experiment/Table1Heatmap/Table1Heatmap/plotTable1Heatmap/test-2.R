library(testthat)

.Random.seed <<- .ext.seed

test_that("plotTable1Heatmap", {
    lst <- list(a = structure(c(1L, 1L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 1L), .Label = c("FALSE", "TRUE"), class = "factor"), 
        b = structure(c(2L, 1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L, 1L), .Label = c("FALSE", "TRUE"), class = "factor"), c = structure(c(1L, 
            2L, 1L, 1L, 2L, 1L, 2L, 1L, 2L, 1L), .Label = c("FALSE", "TRUE"), class = "factor"))
    expect_equal(Table1Heatmap:::plotTable1Heatmap(factorList = lst, method = "CrosstableByN", drawRaster = TRUE), NULL)
})
