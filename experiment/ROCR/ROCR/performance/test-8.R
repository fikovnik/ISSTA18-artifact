library(testthat)

.Random.seed <<- .ext.seed

test_that("performance", {
    pred <- .ext.1
    expect_equal(ROCR:::performance(prediction.obj = pred, measure = "tpr", x.measure = "fpr"), .ext.2)
})
