library(testthat)

.Random.seed <<- .ext.seed

test_that(".pairs_formula", {
    swiss <- datasets::swiss
    expect_equal(ellipse:::.pairs_formula(formula = ~Fertility + Education + Catholic, data = swiss, main = "Swiss data, Education < 20", 
        subset = Education < 20), NULL)
})
