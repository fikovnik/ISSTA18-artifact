library(testthat)

.Random.seed <<- .ext.seed

test_that("preprocess_response", {
    response <- "<?xml version=\"1.0\" encoding=\"utf-8\"?><Chart:chart xsi:schemaLocation=\"http://www.zillow.com/static/xsd/Chart.xsd http://www.zillowstatic.com/vstatic/9041678/static/xsd/Chart.xsd\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:Chart=\"http://www.zillow.com/static/xsd/Chart.xsd\"><request><zpid>48749425</zpid><unit-type>percent</unit-type></request><message><text>Request successfully processed</text><code>0</code></message><response><url>http://www.zillow.com/app?chartDuration=1year&amp;chartType=partner&amp;page=webservice%2FGetChart&amp;service=chart&amp;showPercent=true&amp;zpid=48749425</url><graphsanddata>http://www.zillow.com/homedetails/2114-Bigelow-Ave-N-Seattle-WA-98109/48749425_zpid/#charts-and-data</graphsanddata></response></Chart:chart><!-- H:002  T:4ms  S:201  R:Mon Mar 07 15:08:58 PST 2016  B:4.0.25909-master.a723596~hotfix_pre.53ac87d -->"
    expect_equal(ZillowR:::preprocess_response(x = response), list(request = list(zpid = "48749425", `unit-type` = "percent"), 
        message = list(text = "Request successfully processed", code = "0"), response = structure(list(name = "response", 
            attributes = NULL, children = list(url = structure(list(name = "url", attributes = NULL, children = list(text = structure(list(name = "text", 
                attributes = NULL, children = NULL, namespace = NULL, namespaceDefinitions = NULL, value = "http://www.zillow.com/app?chartDuration=1year&chartType=partner&page=webservice%2FGetChart&service=chart&showPercent=true&zpid=48749425"), 
                class = c("XMLTextNode", "XMLNode", "RXMLAbstractNode", "XMLAbstractNode", "oldClass"))), namespace = NULL, 
                namespaceDefinitions = NULL), class = c("XMLNode", "RXMLAbstractNode", "XMLAbstractNode", "oldClass")), graphsanddata = structure(list(name = "graphsanddata", 
                attributes = NULL, children = list(text = structure(list(name = "text", attributes = NULL, children = NULL, 
                  namespace = NULL, namespaceDefinitions = NULL, value = "http://www.zillow.com/homedetails/2114-Bigelow-Ave-N-Seattle-WA-98109/48749425_zpid/#charts-and-data"), 
                  class = c("XMLTextNode", "XMLNode", "RXMLAbstractNode", "XMLAbstractNode", "oldClass"))), namespace = NULL, 
                namespaceDefinitions = NULL), class = c("XMLNode", "RXMLAbstractNode", "XMLAbstractNode", "oldClass"))), 
            namespace = NULL, namespaceDefinitions = NULL), class = c("XMLNode", "RXMLAbstractNode", "XMLAbstractNode", "oldClass"))))
})
