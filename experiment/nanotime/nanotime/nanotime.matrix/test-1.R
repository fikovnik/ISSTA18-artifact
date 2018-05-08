library(testthat)

.Random.seed <<- .ext.seed

test_that("nanotime.matrix", {
    m <- structure(c(864000, 864001, 864002, 864003, 864004, 864005, 864006, 864007, 864008, 864009, 9897654321, 9897654322, 
        9897654323, 9897654324, 9897654325, 9897654326, 9897654327, 9897654328, 9897654329, 9897654330), .Dim = c(10L, 2L))
    expect_equal(nanotime:::nanotime.matrix(x = m), .ext.1)
})
