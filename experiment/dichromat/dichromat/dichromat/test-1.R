library(testthat)

.Random.seed <<- .ext.seed

test_that("dichromat", {
    colorschemes <- dichromat::colorschemes
    expect_equal(dichromat:::dichromat(colours = colorschemes$Categorical.12, type = "protan"), c("#C7C781", "#95951B", "#FFFF99", 
        "#FFFF38", "#F7F78C", "#F1F105", "#E6E6FE", "#A8A8FE", "#C0C0FF", "#5151FF", "#A8A8BF", "#5A5A3A"))
})
