library(testthat)

.Random.seed <<- .ext.seed

test_that("dichromat", {
    expect_equal(dichromat:::dichromat(colours = c("purple", "violetred1", "green3", "cornsilk", "cyan", "white")), c("#6565ED", 
        "#9B9B93", "#AFAF37", "#F8F8DA", "#D9D9FF", "#FCFCFD"))
})
