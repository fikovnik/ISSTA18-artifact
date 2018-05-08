library(testthat)

.Random.seed <<- .ext.seed

test_that("crunchAuthPlaceholder", {
    expect_equal(crunchy:::crunchAuthPlaceholder(), structure(list(name = "div", attribs = list(class = "form-group shiny-input-container", 
        style = "display: none;"), children = list(structure(list(name = "input", attribs = list(id = "token", type = "text", 
        class = "form-control", value = ""), children = list()), class = "shiny.tag"))), class = "shiny.tag"))
})
