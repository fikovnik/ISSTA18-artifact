library(testthat)

.Random.seed <<- .ext.seed

test_that("S3class<-", {
    expect_equal(R.methodsS3:::`S3class<-`(x = genthat::with_env(function(...) NULL, env = list2env(list(), parent = baseenv())), 
        value = "Bar"), genthat::with_env(structure(function(...) NULL, S3class = "Bar"), env = list2env(list(), parent = baseenv())))
})
