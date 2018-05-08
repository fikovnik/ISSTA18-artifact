library(testthat)

.Random.seed <<- .ext.seed

test_that("cohen.ES", {
    expect_equal(pwr:::cohen.ES(test = "chisq", size = "small"), structure(list(test = "chisq", size = "small", effect.size = 0.1, 
        method = "Conventional effect size from Cohen (1982)"), class = "power.htest"))
})
