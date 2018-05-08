library(testthat)

.Random.seed <<- .ext.seed

test_that("roclet_find", {
    expect_equal(roxygen2:::roclet_find(x = "rd"), structure(list(), class = c("roclet_rd", "roclet")))
})
