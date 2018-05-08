library(testthat)

.Random.seed <<- .ext.seed

test_that("miniButtonBlock", {
    actionButton <- shiny::actionButton
    expect_equal(miniUI:::miniButtonBlock(actionButton("reset", "Reset to defaults"), actionButton("clear", "Clear all")), 
        structure(list(name = "div", attribs = list(class = "gadget-block-button gadget-block-button-top"), children = list(structure(list(name = "button", 
            attribs = list(id = "reset", type = "button", class = "btn btn-default action-button"), children = list(list(NULL, 
                "Reset to defaults"))), class = "shiny.tag"), structure(list(name = "button", attribs = list(id = "clear", 
            type = "button", class = "btn btn-default action-button"), children = list(list(NULL, "Clear all"))), class = "shiny.tag"))), 
            class = "shiny.tag"))
})
