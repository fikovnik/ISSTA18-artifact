library(testthat)

.Random.seed <<- .ext.seed

test_that("as.character.PCICt", {
    as.PCICt <- PCICt::as.PCICt
    expect_equal(PCICt:::as.character.PCICt(x = as.PCICt("2011-02-28", cal = "360") + 2 * 86400), "2011-02-30")
})
