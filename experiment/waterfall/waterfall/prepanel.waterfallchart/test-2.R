library(testthat)

.Random.seed <<- .ext.seed

test_that("prepanel.waterfallchart", {
    expect_equal(waterfall:::prepanel.waterfallchart(x = c(36.2, 85.2, 36.3, 6.8, 11, 46.3, 31.5, 34.5, 44), y = structure(1:9, 
        .Label = c("Administrative interfaces", "Authentication/access control", "Configuration management", "Cryptographic algorithms", 
            "Information gathering", "Input validation", "Parameter manipulation", "Sensitive data handling", "Session management"), 
        class = "factor"), horizontal = TRUE, groups = c("Total", "Total", "Total", "Total", "Total", "Total", "Total", "Total", 
        "Total"), box.ratio = 2, subscripts = 1:9), list(ylim = c("Administrative interfaces", "Authentication/access control", 
        "Configuration management", "Cryptographic algorithms", "Information gathering", "Input validation", "Parameter manipulation", 
        "Sensitive data handling", "Session management", "Total"), yat = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), xlim = c(0, 331.8), 
        dx = 1, dy = 1))
})
