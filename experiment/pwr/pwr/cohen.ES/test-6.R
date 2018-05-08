library(testthat)

.Random.seed <<- .ext.seed

test_that("cohen.ES", {
    expect_equal(pwr:::cohen.ES(test = "t", size = "medium"), structure(list(test = "t", size = "medium", effect.size = 0.5, 
        method = "Conventional effect size from Cohen (1982)"), class = "power.htest"))
})
