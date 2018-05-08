library(testthat)

.Random.seed <<- .ext.seed

test_that("lw_bintf", {
    dtm <- structure(c(2L, 1L, 0L, 1L, 1L, 2L, 1L, 0L, 1L), .Dim = c(3L, 3L), .Dimnames = list(terms = c("hund", "katze", 
        "birne"), docs = c("A1", "A2", "A3")), class = "table")
    expect_equal(lsa:::lw_bintf(m = dtm), structure(c(1, 1, 0, 1, 1, 1, 1, 0, 1), .Dim = c(3L, 3L), .Dimnames = list(terms = c("hund", 
        "katze", "birne"), docs = c("A1", "A2", "A3"))))
})
