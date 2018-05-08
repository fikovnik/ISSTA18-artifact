library(testthat)

.Random.seed <<- .ext.seed

test_that("font_import", {
    expect_equal(extrafont:::font_import(), NULL)
})
