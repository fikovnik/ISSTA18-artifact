library(testthat)

.Random.seed <<- .ext.seed

test_that("choose_font", {
    expect_equal(extrafont:::choose_font(fonts = c("GillSans", "Verdana", "sans"), quiet = TRUE), "")
})
