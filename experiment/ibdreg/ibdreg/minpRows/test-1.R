library(testthat)

.Random.seed <<- .ext.seed

test_that("minpRows", {
    tests <- structure(list(pos = 1:3, chitest = c(3, 4, 2), df = c(1, 1, 1), pval = c(0.0832645166635505, 0.0455002638963584, 
        0.157299207050285)), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(ibdreg:::minpRows(obj = tests, colnames = c("position", "chi.test", "df", "pvalue")), structure(list(position = 2L, 
        chi.test = 4, df = 1, pvalue = 0.0455002638963584), row.names = "1", class = "data.frame"))
})
