library(testthat)

.Random.seed <<- .ext.seed

test_that("McNem_Score_midn", {
    expect_equal(MIDN:::McNem_Score_midn(alpha = 0.025, SW = 1e-04, ppl = 0.585, pmi = 0.315, POWO = 0.9), c(126, 127, 0.902205759420003, 
        134, 0.902527512183427, 131))
})
