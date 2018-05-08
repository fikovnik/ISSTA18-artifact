library(testthat)

.Random.seed <<- .ext.seed

test_that("str_match_all_named", {
    subject <- structure(c(NA, "", "foobar"), names = c("missing", "nomatch", "match"))
    expect_equal(namedCapture:::str_match_all_named(subject.vec = subject, pattern = "(?<name>foo)"), list(missing = structure(character(0), 
        .Dim = c(0L, 0L)), nomatch = structure(character(0), .Dim = c(0L, 0L)), match = structure(character(0), .Dim = c(1L, 
        0L), .Dimnames = list("foo", NULL))))
})
