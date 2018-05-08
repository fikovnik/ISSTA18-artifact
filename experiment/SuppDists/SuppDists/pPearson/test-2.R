library(testthat)

.Random.seed <<- .ext.seed

test_that("pPearson", {
    expect_equal(SuppDists:::pPearson(q = 0.5, N = 10), 0.929494584697482)
})
