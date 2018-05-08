library(testthat)

.Random.seed <<- .ext.seed

test_that("pointertoNEWS", {
    expect_equal(startupmsg:::pointertoNEWS(pkg = "stats"), NULL)
})
