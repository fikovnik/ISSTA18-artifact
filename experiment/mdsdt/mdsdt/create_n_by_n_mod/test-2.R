library(testthat)

.Random.seed <<- .ext.seed

test_that("create_n_by_n_mod", {
    PS_y <- FALSE
    PS_x <- FALSE
    PI <- "same_rho"
    freq <- structure(c(84, 39, 16, 7, 113, 155, 28, 37, 48, 29, 118, 76, 12, 34, 95, 137), .Dim = c(4L, 4L), .Dimnames = list(c("L eyes, L nose", 
        "L eyes, H nose", "H eyes, L nose", "H eyes, H nose"), c("L eyes, L nose", "L eyes, H nose", "H eyes, L nose", "H eyes, H nose")))
    expect_equal(mdsdt:::create_n_by_n_mod(freq = freq, PS_x = PS_x, PS_y = PS_y, PI = PI, from_2x2 = TRUE), structure(c(1, 
        2, 3, 4, 0, 0, 0, 0, 1, 2, 3, 4, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = 4:5, .Dimnames = list(NULL, c("nu", "tau", "mu", 
        "sigma", "rho"))))
})
