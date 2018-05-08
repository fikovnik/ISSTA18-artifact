library(testthat)

.Random.seed <<- .ext.seed

test_that("getTriple", {
    myTextMatrix <- structure(c(2, 2, 2, 2, 2, 2), .Dim = 2:3, .Dimnames = list(c("dog", "cat"), c("c1", "c2", "c3")), .Environment = list2env(list(`triples$P` = structure(c(1L, 
        1L, 1L, 1L, 1L), .Label = "has_category", class = "factor"), `triples$O` = structure(c(1L, 3L, 3L, 3L, 4L), .Label = c("15", 
        "11", "20", "17"), class = "factor"), `triples$S` = structure(c(1L, 2L, 3L, 1L, 1L), .Label = c("1", "3", "2"), class = "factor")), 
        parent = globalenv()), class = "textmatrix")
    expect_equal(lsa:::getTriple(M = myTextMatrix, subject = "c2"), list("has_category", "20"))
})
