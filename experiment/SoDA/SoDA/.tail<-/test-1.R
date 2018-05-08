library(testthat)

.Random.seed <<- .ext.seed

test_that(".tail<-", {
    expect_equal(SoDA:::`.tail<-`(x = character(0), value = c("Undefined combination of types for comparison: ", "double", 
        ", ", "raw")), "Undefined combination of types for comparison: double, raw")
})
