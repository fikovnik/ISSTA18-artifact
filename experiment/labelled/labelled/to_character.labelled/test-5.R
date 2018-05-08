library(testthat)

.Random.seed <<- .ext.seed

test_that("to_character.labelled", {
    x <- structure(c(1, 1, 2), labels = structure(c(1, 2), names = c("yes", "no")), class = "labelled")
    expect_equal(labelled:::to_character.labelled(x = x), c("yes", "yes", "no"))
})
