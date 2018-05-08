library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.f2.test", {
    expect_equal(pwr:::pwr.f2.test(u = 5, v = 89, f2 = 0.1/(1 - 0.1), sig.level = 0.05), structure(list(u = 5, v = 89, f2 = 0.111111111111111, 
        sig.level = 0.05, power = 0.673585770914376, method = "Multiple regression power calculation"), class = "power.htest"))
})
