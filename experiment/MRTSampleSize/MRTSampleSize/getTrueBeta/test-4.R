library(testthat)

.Random.seed <<- .ext.seed

test_that("getTrueBeta", {
    M <- 0.1
    I <- 0
    days <- 28
    beta_quadratic_max <- 28
    expect_equal(MRTSampleSize:::getTrueBeta(q1 = 0, q2 = M - I, q3 = beta_quadratic_max, days = days), structure(c(0, 0.011214953271028, 
        -0.000207684319833853), .Dim = c(3L, 1L)))
})
