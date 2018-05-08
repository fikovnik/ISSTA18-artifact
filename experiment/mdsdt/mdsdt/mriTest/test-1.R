library(testthat)

.Random.seed <<- .ext.seed

test_that("mriTest", {
    thomas01a <- structure(c(83, 38, 15, 6, 112, 154, 27, 36, 47, 28, 117, 75, 11, 33, 94, 136), .Dim = c(4L, 4L), .Dimnames = list(c("L eyes, L nose", 
        "L eyes, H nose", "H eyes, L nose", "H eyes, H nose"), c("L eyes, L nose", "L eyes, H nose", "H eyes, L nose", "H eyes, H nose")))
    expect_equal(mdsdt:::mriTest(x = thomas01a), structure(list(response = structure(c(3L, 4L, 1L, 2L), .Label = c("(-,B1)", 
        "(-,B2)", "(A1,-)", "(A2,-)"), class = "factor"), z = c(0.314, 0, -0.178, 1.469), p.value = c(0.753, 1, 0.859, 0.142)), 
        row.names = c(NA, -4L), class = "data.frame"))
})
