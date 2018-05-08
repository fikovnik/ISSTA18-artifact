library(testthat)

.Random.seed <<- .ext.seed

test_that("remove_labels.default", {
    var <- c(1L, 98L, 99L)
    expect_equal(labelled:::remove_labels.default(x = var), c(1L, 98L, 99L))
})
