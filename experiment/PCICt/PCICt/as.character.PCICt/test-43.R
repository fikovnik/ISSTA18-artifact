library(testthat)

.Random.seed <<- .ext.seed

test_that("as.character.PCICt", {
    as.PCICt <- PCICt::as.PCICt
    expect_equal(PCICt:::as.character.PCICt(x = as.PCICt("2012-02-28", cal = "365") + 86400), "2012-03-01")
})
