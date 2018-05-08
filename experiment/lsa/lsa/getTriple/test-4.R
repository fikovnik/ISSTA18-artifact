library(testthat)

.Random.seed <<- .ext.seed

test_that("getTriple", {
    x <- structure(c(2, 2, 2, 2, 2, 2), .Dim = 2:3, .Dimnames = list(c("dog", "mouse"), c("doc1", "doc2", "doc3")), class = "textmatrix", 
        .Environment = list2env(list(`triples$P` = structure(c(1L, 2L, 1L), .Label = c("has_category", "has_grade"), class = "factor"), 
            `triples$O` = structure(2:4, .Label = c("15", "7", "5", "11"), class = "factor"), `triples$S` = structure(c(2L, 
                1L, 1L), .Label = c("1", "2"), class = "factor")), parent = globalenv()))
    expect_equal(lsa:::getTriple(M = x, subject = "doc1", predicate = "has_category"), "11")
})
