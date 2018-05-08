library(testthat)

.Random.seed <<- .ext.seed

test_that("prepanel.waterfallchart", {
    expect_equal(waterfall:::prepanel.waterfallchart(x = structure(c(3L, 4L, 2L, 1L, 5L), .Label = c("Gains", "Interest", 
        "Net Sales", "Expenses", "Taxes"), class = "factor"), y = c(150L, -170L, 18L, 10L, -2L), horizontal = FALSE, groups = structure(c(1L, 
        1L, 2L, 2L, 2L), .Label = c("EBIT", "Net Income"), class = "factor"), box.ratio = 2, subscripts = 1:5), list(xlim = c("Net Sales", 
        "Expenses", "EBIT", "Gains", "Interest", "Taxes", "Net Income"), xat = c(1, 2, 3, 4, 5, 6, 7), ylim = c(-20, 150), 
        dx = 1, dy = 1))
})
