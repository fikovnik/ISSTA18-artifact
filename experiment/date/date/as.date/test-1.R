library(testthat)

.Random.seed <<- .ext.seed

test_that("as.date", {
    expect_equal(date:::as.date(x = c("1jan1960", "2jan1960", "31mar1960", "30jul1960")), structure(c(0L, 1L, 90L, 211L), 
        class = "date"))
})
