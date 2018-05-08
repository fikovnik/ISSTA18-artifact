library(testthat)

.Random.seed <<- .ext.seed

test_that("conf.design", {
    expect_equal(conf.design:::conf.design(G = c(D = 1, E = 1), p = 3), structure(list(Blocks = structure(c(1L, 1L, 1L, 2L, 
        2L, 2L, 3L, 3L, 3L), .Label = c("0", "1", "2"), class = "factor"), D = structure(c(1L, 3L, 2L, 2L, 1L, 3L, 3L, 2L, 
        1L), .Label = c("0", "1", "2"), class = "factor"), E = structure(c(1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), .Label = c("0", 
        "1", "2"), class = "factor")), row.names = c(NA, -9L), class = "data.frame"))
})
