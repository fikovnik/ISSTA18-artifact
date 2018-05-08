library(testthat)

.Random.seed <<- .ext.seed

test_that("printLanguages", {
    expect_equal(transcribeR:::printLanguages(), NULL)
})
