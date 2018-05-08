library(testthat)

.Random.seed <<- .ext.seed

test_that("blob_size", {
    x <- structure(list(as.raw(c(71, 111, 111, 100, 32, 109, 111, 114, 110, 105, 110, 103)), as.raw(c(72, 101, 108, 108, 
        111))), class = "blob")
    expect_equal(blob:::blob_size(x = x), c("12 B", " 5 B"))
})
