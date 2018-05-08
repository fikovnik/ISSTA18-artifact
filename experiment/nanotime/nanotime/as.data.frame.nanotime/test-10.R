library(testthat)

.Random.seed <<- .ext.seed

test_that("as.data.frame.nanotime", {
    x <- list(t = .ext.1, d = 1:10)
    i <- 1L
    expect_equal(nanotime:::as.data.frame.nanotime(x = x[[i]], optional = TRUE), structure(list(.ext.2), row.names = c(NA, 
        -10L), class = "data.frame"))
})
