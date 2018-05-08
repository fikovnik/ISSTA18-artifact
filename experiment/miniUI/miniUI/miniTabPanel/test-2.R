library(testthat)

.Random.seed <<- .ext.seed

test_that("miniTabPanel", {
    uiOutput <- shiny::uiOutput
    icon <- shiny::icon
    expect_equal(miniUI:::miniTabPanel(title = "Subset", uiOutput("subset_ui"), icon = icon("sliders")), structure(list(name = "div", 
        attribs = list(class = "tab-pane", title = "Subset", `data-value` = "Subset", `data-icon-class` = "fa fa-sliders"), 
        children = list(structure(list(name = "div", attribs = list(class = "gadget-tabs-content-inner"), children = list(structure(list(name = "div", 
            attribs = list(id = "subset_ui", class = "shiny-html-output"), children = list()), class = "shiny.tag"))), class = "shiny.tag"))), 
        class = "shiny.tag"))
})
