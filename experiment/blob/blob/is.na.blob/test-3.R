library(testthat)

.Random.seed <<- .ext.seed

test_that("is.na.blob", {
    x <- structure(list(as.raw(1), NULL, as.raw(2), NULL), class = "blob")
    expect_equal(blob:::is.na.blob(x = x), c(FALSE, TRUE, FALSE, TRUE))
})
