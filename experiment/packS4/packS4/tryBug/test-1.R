library(testthat)

.Random.seed <<- .ext.seed

test_that("tryBug", {
    f <- genthat::with_env(function(oldYoung) {
        if (oldYoung == "old") {
            cat("You are not that old!")
        }
        else {
            if (oldYoung == "young") {
                cat("You are young, great for you!")
            }
            else {
                stop("We deal only with young and old peoples!")
            }
        }
    }, env = list2env(list(), parent = baseenv()))
    expect_equal(packS4:::tryBug(f("dead")), .Primitive("invisible"))
})
