library(testthat)

.Random.seed <<- .ext.seed

test_that("as.character.date", {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), class = "date")
    expect_equal(date:::as.character.date(x = range(object), maxsum = 7L, digits = 12L), c("2Jan60", "11Jan60"))
})
