library(testthat)

.Random.seed <<- .ext.seed

test_that("mosaic.setGlobalCodelist", {
    expect_equal(MOQA:::mosaic.setGlobalCodelist(coding = c("1=yes", "2=no", "99996=no information")), structure(list(V1 = c("yes", 
        "no", "no information")), row.names = c("1", "2", "99996"), class = "data.frame"))
})
