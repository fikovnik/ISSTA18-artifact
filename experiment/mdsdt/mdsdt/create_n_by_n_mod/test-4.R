library(testthat)

.Random.seed <<- .ext.seed

test_that("create_n_by_n_mod", {
    PS_y <- TRUE
    PS_x <- TRUE
    PI <- "none"
    freq <- structure(c(150, 79, 21, 8, 65, 143, 16, 26, 34, 11, 150, 81, 8, 24, 70, 142), .Dim = c(4L, 4L), .Dimnames = list(c("L eyes, L mouth", 
        "L eyes, H mouth", "H eyes, L mouth", "H eyes, H mouth"), c("L eyes, L mouth", "L eyes, H mouth", "H eyes, L mouth", 
        "H eyes, H mouth")))
    expect_equal(mdsdt:::create_n_by_n_mod(freq = freq, PS_x = PS_x, PS_y = PS_y, PI = PI, from_2x2 = TRUE), structure(c(1, 
        2, 1, 2, 0, 0, 0, 0, 1, 1, 2, 2, 0, 0, 0, 0, 1, 2, 3, 4), .Dim = 4:5, .Dimnames = list(NULL, c("nu", "tau", "mu", 
        "sigma", "rho"))))
})
