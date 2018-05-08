library(testthat)

.Random.seed <<- .ext.seed

test_that("display_ease", {
    expect_equal(tweenr:::display_ease(ease = "linear"), NULL)
})
