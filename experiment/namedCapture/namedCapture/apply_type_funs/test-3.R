library(testthat)

.Random.seed <<- .ext.seed

test_that("apply_type_funs", {
    type.list <- list(chromStart = genthat::with_env(function(x) as.integer(gsub("[^0-9]", "", x)), env = list2env(list(), 
        parent = baseenv())), chromEnd = genthat::with_env(function(x) as.integer(gsub("[^0-9]", "", x)), env = list2env(list(), 
        parent = baseenv())))
    m <- structure(character(0), .Dim = c(0L, 0L))
    expect_equal(namedCapture:::apply_type_funs(match.mat = m, type.list = type.list), structure(list(), names = character(), 
        row.names = integer(0), class = "data.frame"))
})
