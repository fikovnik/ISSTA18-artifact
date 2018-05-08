library(testthat)

.Random.seed <<- .ext.seed

test_that("as.blob.integer", {
    expect_equal(blob:::as.blob.integer(x = 1:4), structure(list(as.raw(1), as.raw(2), as.raw(3), as.raw(4)), class = "blob"))
})
