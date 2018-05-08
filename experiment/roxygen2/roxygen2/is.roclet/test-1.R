library(testthat)

.Random.seed <<- .ext.seed

test_that("is.roclet", {
    res <- structure(list(), class = c("roclet_rd", "roclet"))
    expect_equal(roxygen2:::is.roclet(x = res), TRUE)
})
