library(testthat)

.Random.seed <<- .ext.seed

test_that("crunchPage", {
    expect_equal(crunchy:::crunchPage(), structure(list(NULL, NULL, list(structure(list(name = "div", attribs = list(class = "container-fluid"), 
        children = list(structure(list(name = "head", attribs = list(), children = list(structure(list(name = "link", attribs = list(rel = "stylesheet", 
            type = "text/css", href = "https://app.crunch.io/styles.css"), children = list()), class = "shiny.tag"), structure(list(name = "style", 
            attribs = list(type = "text/css"), children = list(structure("h1 {\r\n  font-weight: 700;\r\n  font-size: 1.2em;\r\n  line-height: 1.1;\r\n}\r\n\r\n.control-label {\r\n    font-weight: 500;\r\n    line-height: 1.5;\r\n}\r\n\r\ndiv .modebar {\r\n    display:none;\r\n}\r\n\r\nbody {\r\n    overflow: auto\r\n}", 
                html = TRUE, class = c("html", "character")))), class = "shiny.tag"), structure(list(name = "script", attribs = list(), 
            children = list(structure("function getToken() {\r\n    var ca = document.cookie.split(';')\r\n    for(var i=0; i < ca.length; i++) {\r\n        var c = $.trim(ca[i])\r\n        if (c.indexOf('token=') === 0) {\r\n            return decodeURIComponent(c.substring(6, c.length))\r\n        }\r\n    }\r\n    return null\r\n}\r\n\r\n$(document).ready(function() {\r\n    $(\"#token\").val(getToken())\r\n})\r\n\r\n// $(document).on('shiny:connected', function(event) {\r\n//     var token = getToken()\r\n//     Shiny.onInputChange('token', token)\r\n//     console.log(\"Token set\")\r\n// })", 
                html = TRUE, class = c("html", "character")))), class = "shiny.tag"))), class = "shiny.tag"), structure(list(name = "div", 
            attribs = list(class = "form-group shiny-input-container", style = "display: none;"), children = list(structure(list(name = "input", 
                attribs = list(id = "token", type = "text", class = "form-control", value = ""), children = list()), class = "shiny.tag"))), 
            class = "shiny.tag"))), class = "shiny.tag"))), class = c("shiny.tag.list", "list"), html_dependencies = list(structure(list(name = "bootstrap", 
        version = "3.3.7", src = list(href = "shared/bootstrap", file = "/usr/local/lib/R/site-library/shiny/www/shared/bootstrap"), 
        meta = list(viewport = "width=device-width, initial-scale=1"), script = c("js/bootstrap.min.js", "shim/html5shiv.min.js", 
            "shim/respond.min.js"), stylesheet = "css/bootstrap.min.css", head = NULL, attachment = NULL, package = NULL, 
        all_files = TRUE), class = "html_dependency"))))
})
