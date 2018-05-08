library(testthat)

.Random.seed <<- .ext.seed

test_that("dob", {
    test_cpr <- cprr::test_cpr
    expect_equal(cprr:::dob(cpr = test_cpr$cpr), structure(c(7395, 7395, 912, -4171, -2710, -3652, -3652, 7671, 7671, 7671, 
        -17227, 16771, 7399, 7399, 6730, 12974, 14893, 17087, 17087, 2602, 3332, 4428, 4275, 11037, -20128, -8134, -7677, 
        4715, 1490, 9951), class = "Date"))
})
