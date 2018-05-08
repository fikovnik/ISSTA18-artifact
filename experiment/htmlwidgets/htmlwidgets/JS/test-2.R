library(testthat)

.Random.seed <<- .ext.seed

test_that("JS", {
    expect_equal(htmlwidgets:::JS("1 + 1"), structure("1 + 1", class = "JS_EVAL"))
})
