library(testthat)

.Random.seed <<- .ext.seed

test_that("waterfallplot", {
    rasiel <- structure(list(label = structure(c(3L, 4L, 2L, 1L, 5L), .Label = c("Gains", "Interest", "Net Sales", "Expenses", 
        "Taxes"), class = "factor"), value = c(150L, -170L, 18L, 10L, -2L), subtotal = structure(c(1L, 1L, 2L, 2L, 2L), .Label = c("EBIT", 
        "Net Income"), class = "factor")), class = "data.frame", row.names = c(NA, -5L))
    expect_equal(waterfall:::waterfallplot(height = rasiel$value, names.arg = rasiel$label), c(0.7, 1.9, 3.1, 4.3, 5.5))
})
