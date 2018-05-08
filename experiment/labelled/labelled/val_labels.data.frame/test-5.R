library(testthat)

.Random.seed <<- .ext.seed

test_that("val_labels.data.frame", {
    df <- structure(list(v1 = 1:3, v2 = c(2, 3, 1), v3 = c(3L, 2L, 1L)), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(labelled:::val_labels.data.frame(x = df), list(v1 = NULL, v2 = NULL, v3 = NULL))
})
