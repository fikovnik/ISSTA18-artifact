library(testthat)

.Random.seed <<- .ext.seed

test_that("collapse", {
    x <- NA_character_
    args <- list(fil = "a")
    expect_equal(MGRASTer:::collapse(x = names(args)[is.na(x)]), "fil")
})
