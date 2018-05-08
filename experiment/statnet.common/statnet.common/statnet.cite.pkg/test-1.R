library(testthat)

.Random.seed <<- .ext.seed

test_that("statnet.cite.pkg", {
    expect_equal(statnet.common:::statnet.cite.pkg(pkg = "statnet.common"), structure(list(structure(list(author = structure(list(list(given = "Pavel N.", 
        family = "Krivitsky", role = c("aut", "cre"), email = "pavel@uow.edu.au", comment = NULL)), class = "person"), title = "statnet.common: Common R Scripts and Utilities Used by the Statnet Project\nSoftware", 
        organization = "The Statnet Project (\\url{http://www.statnet.org})", year = "2017", note = "R package version 4.0.0", 
        url = "CRAN.R-project.org/package=statnet.common"), bibtype = "Manual")), class = "bibentry"))
})
