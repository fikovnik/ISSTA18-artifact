library(testthat)

.Random.seed <<- .ext.seed

test_that("roclet", {
    expect_equal(roxygen2:::roclet(subclass = "rd"), structure(list(), class = c("roclet_rd", "roclet")))
})
