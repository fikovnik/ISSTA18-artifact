library(testthat)

.Random.seed <<- .ext.seed

test_that("validation", {
    datavalidcapushe <- structure(list(model = c("K=30", "K=40", "K=50"), pen = c(0.149, 0.199, 0.249), complexity = c(149L, 
        199L, 249L), contrast = c(4.54879, 4.48762, 4.41842)), row.names = c(30L, 40L, 50L), class = "data.frame")
    capushepartial <- .ext.1
    expect_equal(capushe:::validation(x = capushepartial, data2 = datavalidcapushe), list(ask = FALSE, mgp = c(3, 0.5, 0), 
        oma = c(0, 0, 0, 0), xaxs = "r", mfrow = c(1L, 1L), cex.axis = 1))
})
