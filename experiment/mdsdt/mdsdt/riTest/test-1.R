library(testthat)

.Random.seed <<- .ext.seed

test_that("riTest", {
    thomas01a <- structure(c(83, 38, 15, 6, 112, 154, 27, 36, 47, 28, 117, 75, 11, 33, 94, 136), .Dim = c(4L, 4L), .Dimnames = list(c("L eyes, L nose", 
        "L eyes, H nose", "H eyes, L nose", "H eyes, H nose"), c("L eyes, L nose", "L eyes, H nose", "H eyes, L nose", "H eyes, H nose")))
    expect_equal(mdsdt:::riTest(x = thomas01a), structure(list(stimulus = structure(1:4, .Label = c("(A1,B1)", "(A1,B2)", 
        "(A2,B1)", "(A2,B2)"), class = "factor"), chi.2 = c(26.484, 16.367, 5.468, 7.273), p.value = c(0, 0, 0.019, 0.007)), 
        row.names = c(NA, -4L), class = "data.frame"))
})
