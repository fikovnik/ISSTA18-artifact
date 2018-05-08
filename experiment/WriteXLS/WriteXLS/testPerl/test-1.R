library(testthat)

.Random.seed <<- .ext.seed

test_that("testPerl", {
    expect_equal(WriteXLS:::testPerl(verbose = FALSE), TRUE)
})
