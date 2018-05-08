library(testthat)

.Random.seed <<- .ext.seed

test_that("apply_type_funs", {
    type.list <- list(chromStart = genthat::with_env(function(x) as.integer(gsub("[^0-9]", "", x)), env = list2env(list(), 
        parent = baseenv())), chromEnd = genthat::with_env(function(x) as.integer(gsub("[^0-9]", "", x)), env = list2env(list(), 
        parent = baseenv())))
    m <- structure(c("chrM", "111,000", "222,000"), .Dim = c(1L, 3L), .Dimnames = list(NULL, c("chrom", "chromStart", "chromEnd")))
    expect_equal(namedCapture:::apply_type_funs(match.mat = m, type.list = type.list), structure(list(chrom = "chrM", chromStart = 111000L, 
        chromEnd = 222000L), row.names = c(NA, -1L), class = "data.frame"))
})
