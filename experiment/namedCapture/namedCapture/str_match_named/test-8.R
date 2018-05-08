library(testthat)

.Random.seed <<- .ext.seed

test_that("str_match_named", {
    sample.assay.pattern <- "sampleType=(?<sampleType>[^ ]+).*assayType=(?<name>[^ ]+)"
    name.value.vec <- c("  sampleType=monocyte   assayType=H3K27me3    cost=5", "sampleType=monocyte assayType=H3K27ac", 
        " sampleType=Myeloidcell cost=30.5  assayType=H3K4me3")
    expect_equal(namedCapture:::str_match_named(subject.vec = name.value.vec, pattern = sample.assay.pattern), structure(c("monocyte", 
        "monocyte", "Myeloidcell"), .Dim = c(3L, 1L), .Dimnames = list(c("H3K27me3", "H3K27ac", "H3K4me3"), "sampleType")))
})
