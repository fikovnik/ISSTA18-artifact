library(testthat)

.Random.seed <<- .ext.seed

test_that("digest", {
    expect_equal(SoDA:::digest(object = list(LETTERS, data.frame(a = letters[1:5], b = matrix(1:10, ncol = 2)))), "226f1c797a8c92d1b3c9d4c5c67947c2")
})
