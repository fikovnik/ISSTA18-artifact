library(testthat)

.Random.seed <<- .ext.seed

test_that("rawToChar", {
    expect_equal(webutils:::rawToChar(x = as.raw(1:40)), "\001\002\003\004\005\006\a\b\t\n\v\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'(")
})
