library(testthat)

.Random.seed <<- .ext.seed

test_that("var_label.default", {
    x <- structure(c(1, 1, 2), labels = structure(c(1, 2), names = c("yes", "no")), class = "labelled", label = "yes/no")
    to_character <- labelled::to_character
    expect_equal(labelled:::var_label.default(x = to_character(x)), "yes/no")
})
