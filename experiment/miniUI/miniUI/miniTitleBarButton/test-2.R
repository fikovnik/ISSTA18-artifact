library(testthat)

.Random.seed <<- .ext.seed

test_that("miniTitleBarButton", {
    expect_equal(miniUI:::miniTitleBarButton(inputId = "next", label = "Next"), structure(list(name = "button", attribs = list(id = "next", 
        type = "button", class = "btn btn-default btn-sm action-button"), children = list("Next")), class = "shiny.tag"))
})
