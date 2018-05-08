library(testthat)

.Random.seed <<- .ext.seed

test_that("paddingToPos", {
    padding <- 0
    expect_equal(miniUI:::paddingToPos(padding = padding), "top:0px;right:0px;bottom:0px;left:0px;")
})
