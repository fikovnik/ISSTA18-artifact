library(testthat)

.Random.seed <<- .ext.seed

test_that("transform2", {
    BOD <- datasets::BOD
    expect_equal(gsubfn:::transform2(`_data` = BOD, b = a, a = demand), structure(list(Time = c(1, 2, 3, 4, 5, 7), demand = c(8.3, 
        10.3, 19, 16, 15.6, 19.8), b = c(8.3, 10.3, 19, 16, 15.6, 19.8), a = c(8.3, 10.3, 19, 16, 15.6, 19.8)), row.names = c(NA, 
        -6L), reference = "A1.4, p. 270", class = "data.frame"))
})
