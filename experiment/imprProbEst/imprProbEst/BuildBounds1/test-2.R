library(testthat)

.Random.seed <<- .ext.seed

test_that("BuildBounds1", {
    UpperPrevisions <- c(0.2105, 0.2905, 0.2405)
    expect_equal(imprProbEst:::BuildBounds1(upperP = UpperPrevisions), structure(c(0.2105, 0.2905, 0.2405), .Dim = c(3L, 
        1L)))
})
