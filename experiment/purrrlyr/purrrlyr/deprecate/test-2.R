library(testthat)

.Random.seed <<- .ext.seed

test_that("deprecate", {
    expect_equal(purrrlyr:::deprecate("`invoke_rows()` is deprecated; please use `pmap()` instead."), NULL)
})
