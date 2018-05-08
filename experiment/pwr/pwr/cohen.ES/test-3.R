library(testthat)

.Random.seed <<- .ext.seed

test_that("cohen.ES", {
    expect_equal(pwr:::cohen.ES(test = "r", size = "small"), structure(list(test = "r", size = "small", effect.size = 0.1, 
        method = "Conventional effect size from Cohen (1982)"), class = "power.htest"))
})
