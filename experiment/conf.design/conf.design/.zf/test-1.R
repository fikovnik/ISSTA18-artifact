library(testthat)

.Random.seed <<- .ext.seed

test_that(".zf", {
    l <- list(structure(list(Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), 
        A = structure(c(1L, 2L, 2L, 1L, 2L, 1L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 2L, 
            1L, 2L, 1L, 2L, 1L, 2L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 
            2L), .Label = c("0", "1"), class = "factor")), row.names = c(NA, -8L), class = "data.frame"), structure(list(Blocks = structure(c(1L, 
        1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 2L, 1L, 2L, 1L, 2L, 1L, 
        2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 1L, 2L, 2L, 2L, 2L, 1L, 1L), .Label = c("0", "1"), 
        class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), class = "factor")), row.names = c(NA, 
        -8L), class = "data.frame"))
    expect_equal(conf.design:::.zf(x = rep(1:length(l), sapply(l, nrow))), c("1", "1", "1", "1", "1", "1", "1", "1", "2", 
        "2", "2", "2", "2", "2", "2", "2"))
})
