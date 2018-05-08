library(testthat)

.Random.seed <<- .ext.seed

test_that("var_label.default", {
    iris <- datasets::iris
    expect_equal(labelled:::var_label.default(x = iris$Sepal.Length), NULL)
})
