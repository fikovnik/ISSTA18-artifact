library(testthat)

.Random.seed <<- .ext.seed

test_that("val_labels.default", {
    x <- 1:3
    expect_equal(labelled:::val_labels.default(x = x), NULL)
})
