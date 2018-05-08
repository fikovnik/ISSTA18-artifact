library(testthat)

.Random.seed <<- .ext.seed

test_that("rd_roclet", {
    expect_equal(roxygen2:::rd_roclet(), structure(list(), class = c("roclet_rd", "roclet")))
})
