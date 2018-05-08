library(testthat)

.Random.seed <<- .ext.seed

test_that("warning", {
    required <- "id"
    collapse <- MGRASTer:::collapse
    check.required <- FALSE
    expect_equal(MGRASTer:::warning("required parameter(s) missing: ", collapse(required[!check.required])), "MGRASTer: required parameter(s) missing: id")
})
