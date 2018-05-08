library(testthat)

.Random.seed <<- .ext.seed

test_that("JS", {
    expect_equal(networkD3:::JS("d.nodesize"), structure("d.nodesize", class = "JS_EVAL"))
})
