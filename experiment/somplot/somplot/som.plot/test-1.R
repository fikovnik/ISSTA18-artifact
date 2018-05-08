library(testthat)

.Random.seed <<- .ext.seed

test_that("som.plot", {
    expect_equal(somplot:::som.plot(visfile = system.file("test.data/iris4som.out", package = "somplot"), datfile = system.file("test.data/iris4som.dat", 
        package = "somplot")), NULL)
})
