library(testthat)

.Random.seed <<- .ext.seed

test_that("setCacheRootPath", {
    expect_equal(simpleRCache:::setCacheRootPath(), list(simpleRCacheRoot = NULL))
})
