library(testthat)

.Random.seed <<- .ext.seed

test_that("cohen.ES", {
    expect_equal(pwr:::cohen.ES(test = "anov", size = "medium"), structure(list(test = "anov", size = "medium", effect.size = 0.25, 
        method = "Conventional effect size from Cohen (1982)"), class = "power.htest"))
})
