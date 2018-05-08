library(testthat)

.Random.seed <<- .ext.seed

test_that("cohen.ES", {
    expect_equal(pwr:::cohen.ES(test = "p", size = "small"), structure(list(test = "p", size = "small", effect.size = 0.2, 
        method = "Conventional effect size from Cohen (1982)"), class = "power.htest"))
})
