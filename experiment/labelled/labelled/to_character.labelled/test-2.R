library(testthat)

.Random.seed <<- .ext.seed

test_that("to_character.labelled", {
    v <- structure(c(1, 2, 2, 2, 3, 9, 1, 3, 2, NA), labels = structure(c(1, 3, 9), names = c("yes", "no", "don't know")), 
        class = "labelled")
    expect_equal(labelled:::to_character.labelled(x = v, nolabel_to_na = TRUE, missing_to_na = FALSE), c("yes", NA, NA, NA, 
        "no", "don't know", "yes", "no", NA, NA))
})
