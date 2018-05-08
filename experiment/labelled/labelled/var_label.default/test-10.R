library(testthat)

.Random.seed <<- .ext.seed

test_that("var_label.default", {
    x <- structure(c(1L, 1L, 2L), .Label = c("1", "2"), class = "factor", label = "test")
    to_labelled <- labelled::to_labelled
    expect_equal(labelled:::var_label.default(x = to_labelled(x)), "test")
})
