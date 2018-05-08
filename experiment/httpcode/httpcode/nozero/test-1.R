library(testthat)

.Random.seed <<- .ext.seed

test_that("nozero", {
    status_codes <- httpcode:::status_codes
    code2 <- "30[12]$"
    expect_equal(httpcode:::nozero(x = sapply(names(status_codes), function(x) grep(code2, x, value = TRUE))), c("301", "302"))
})
