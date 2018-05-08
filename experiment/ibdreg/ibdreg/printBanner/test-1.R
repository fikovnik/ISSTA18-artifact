library(testthat)

.Random.seed <<- .ext.seed

test_that("printBanner", {
    expect_equal(ibdreg:::printBanner(str = "This is a pretty banner", banner.width = 40, char.perline = 30), NULL)
})
