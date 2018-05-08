library(testthat)

.Random.seed <<- .ext.seed

test_that("loadCrunchAssets", {
    expect_equal(crunchy:::loadCrunchAssets(), structure(list(name = "head", attribs = list(), children = list(structure(list(name = "link", 
        attribs = list(rel = "stylesheet", type = "text/css", href = "https://app.crunch.io/styles.css"), children = list()), 
        class = "shiny.tag"), structure(list(name = "style", attribs = list(type = "text/css"), children = list(structure("h1 {\r\n  font-weight: 700;\r\n  font-size: 1.2em;\r\n  line-height: 1.1;\r\n}\r\n\r\n.control-label {\r\n    font-weight: 500;\r\n    line-height: 1.5;\r\n}\r\n\r\ndiv .modebar {\r\n    display:none;\r\n}\r\n\r\nbody {\r\n    overflow: auto\r\n}", 
        html = TRUE, class = c("html", "character")))), class = "shiny.tag"), structure(list(name = "script", attribs = list(), 
        children = list(structure("function getToken() {\r\n    var ca = document.cookie.split(';')\r\n    for(var i=0; i < ca.length; i++) {\r\n        var c = $.trim(ca[i])\r\n        if (c.indexOf('token=') === 0) {\r\n            return decodeURIComponent(c.substring(6, c.length))\r\n        }\r\n    }\r\n    return null\r\n}\r\n\r\n$(document).ready(function() {\r\n    $(\"#token\").val(getToken())\r\n})\r\n\r\n// $(document).on('shiny:connected', function(event) {\r\n//     var token = getToken()\r\n//     Shiny.onInputChange('token', token)\r\n//     console.log(\"Token set\")\r\n// })", 
            html = TRUE, class = c("html", "character")))), class = "shiny.tag"))), class = "shiny.tag"))
})
