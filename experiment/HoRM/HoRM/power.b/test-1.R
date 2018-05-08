library(testthat)

.Random.seed <<- .ext.seed

test_that("power.b", {
    toy <- structure(list(x = c(4, 4, 7, 10, 10), y = c(15, 11, 19, 21, 29)), row.names = c(NA, -5L), class = "data.frame")
    expect_equal(HoRM:::power.b(x = toy$x, y = toy$y), structure(list(ncp = c(67.5000000000002, 10.8), power = c(0.998833065251454, 
        0.602294612282977)), row.names = c("Intercept", "Slope"), class = "data.frame"))
})
