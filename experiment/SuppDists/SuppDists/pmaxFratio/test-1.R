library(testthat)

.Random.seed <<- .ext.seed

test_that("pmaxFratio", {
    expect_equal(SuppDists:::pmaxFratio(q = 4, df = 10, k = 10), 0.479494278485568)
})
