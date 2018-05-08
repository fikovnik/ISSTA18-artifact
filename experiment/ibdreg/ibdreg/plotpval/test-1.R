library(testthat)

.Random.seed <<- .ext.seed

test_that("plotpval", {
    runif <- stats::runif
    expect_equal(ibdreg:::plotpval(pos = 1:10, pmat = cbind(runif(10)/5, runif(10)/10), lty = c(1, 2), col = c(1, 2), legend = c("runif/5", 
        "runif/10")), list(rect = list(w = 2, h = 0.75, left = 1, top = 3), text = list(x = c(2.0125, 2.0125), y = c(2.87441860465116, 
        2.74883720930233))))
})
