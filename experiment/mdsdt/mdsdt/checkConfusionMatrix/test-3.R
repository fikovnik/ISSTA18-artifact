library(testthat)

.Random.seed <<- .ext.seed

test_that("checkConfusionMatrix", {
    x <- structure(c(83, 38, 15, 6, 112, 154, 27, 36, 47, 28, 117, 75, 11, 33, 94, 136), .Dim = c(4L, 4L), .Dimnames = list(c("L eyes, L nose", 
        "L eyes, H nose", "H eyes, L nose", "H eyes, H nose"), c("L eyes, L nose", "L eyes, H nose", "H eyes, L nose", "H eyes, H nose")))
    expect_equal(mdsdt:::checkConfusionMatrix(x = x), TRUE)
})
