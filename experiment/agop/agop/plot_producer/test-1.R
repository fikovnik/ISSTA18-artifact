library(testthat)

.Random.seed <<- .ext.seed

test_that("plot_producer", {
    john_s <- c(11, 5, 4, 4, 3, 2, 2, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0)
    expect_equal(agop:::plot_producer(x = john_s, col = "red", main = "Smith, John"), NULL)
})
