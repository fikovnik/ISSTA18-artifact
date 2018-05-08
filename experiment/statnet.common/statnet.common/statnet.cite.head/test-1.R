library(testthat)

.Random.seed <<- .ext.seed

test_that("statnet.cite.head", {
    expect_equal(statnet.common:::statnet.cite.head(pkg = "statnet.common"), structure("`statnet.common` is part of the Statnet suite of packages.  If you are using the `statnet.common` package for research that will be published, we request that you acknowledge this by citing the following.\nFor BibTeX format, use toBibtex(citation(\"statnet.common\")).", 
        class = "citationHeader"))
})
