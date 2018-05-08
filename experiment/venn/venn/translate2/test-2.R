library(testthat)

.Random.seed <<- .ext.seed

test_that("translate2", {
    x <- "natpride"
    snames <- c("DEMOC", "ETHFRACT", "GEOCON", "POLDIS", "NATPRIDE")
    expect_equal(venn:::translate2(expression = x, snames = snames), structure(c(-1, -1, -1, -1, 0), .Dim = c(1L, 5L), .Dimnames = list("natpride", 
        c("DEMOC", "ETHFRACT", "GEOCON", "POLDIS", "NATPRIDE")), class = "translate"))
})
