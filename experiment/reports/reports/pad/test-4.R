library(testthat)

.Random.seed <<- .ext.seed

test_that("pad", {
    expect_equal(reports:::pad(x = sample(1:10, 6)), c("03", "04", "06", "08", "09", "10"))
})
