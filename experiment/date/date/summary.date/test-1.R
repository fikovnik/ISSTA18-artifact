library(testthat)

.Random.seed <<- .ext.seed

test_that("summary.date", {
    X <- list(x = 1:10, date = structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), class = "date"))
    i <- 2L
    expect_equal(date:::summary.date(object = X[[i]], maxsum = 7L, digits = 12L), structure(c("2Jan60", "11Jan60"), names = c("First ", 
        "Last  ")))
})
