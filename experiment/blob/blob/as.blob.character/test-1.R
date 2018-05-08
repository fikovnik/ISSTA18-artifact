library(testthat)

.Random.seed <<- .ext.seed

test_that("as.blob.character", {
    expect_equal(blob:::as.blob.character(x = c("Good morning", "Good evening")), structure(list(as.raw(c(71, 111, 111, 100, 
        32, 109, 111, 114, 110, 105, 110, 103)), as.raw(c(71, 111, 111, 100, 32, 101, 118, 101, 110, 105, 110, 103))), class = "blob"))
})
