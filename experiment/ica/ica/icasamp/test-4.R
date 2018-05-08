library(testthat)

.Random.seed <<- .ext.seed

test_that("icasamp", {
    expect_equal(ica:::icasamp(dname = "f", query = "kur"), 1.11111111111111)
})
