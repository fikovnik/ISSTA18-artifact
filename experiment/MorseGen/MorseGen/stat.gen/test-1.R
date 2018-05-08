library(testthat)

.Random.seed <<- .ext.seed

test_that("stat.gen", {
    expect_equal(MorseGen:::stat.gen(num.subj = 10, target.mean = 18.4, target.sd = 3.2), list(DATA = structure(c(18.46, 
        16.53, 18.63, 13.19, 14.37, 21.55, 19.16, 19.8, 24.12, 18.19), .Dim = c(10L, 1L), .Dimnames = list(NULL, "Variable X")), 
        PERFORMANCE = structure(list(`Target Variable X Mean` = 18.4, `Sample Variable X Mean` = 18.4, `Target Variable X SD` = 3.2, 
            `Sample Variable X SD` = 3.2, Iterations = 20), row.names = c(NA, -1L), class = "data.frame")))
})
