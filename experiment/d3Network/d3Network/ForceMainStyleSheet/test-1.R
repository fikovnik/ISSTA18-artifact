library(testthat)

.Random.seed <<- .ext.seed

test_that("ForceMainStyleSheet", {
    expect_equal(d3Network:::ForceMainStyleSheet(), "<style>\n.link {\nstroke: {{linkColour}};\nopacity: {{opacity}};\nstroke-width: 1.5px;\n}\n.node circle {\nstroke: #fff;\nopacity: {{opacity}};\nstroke-width: 1.5px;\n}\n.node:not(:hover) .nodetext {\ndisplay: none;\n}\ntext {\nfont: {{fontsize}}px serif;\nopacity: {{opacity}};\npointer-events: none;\n}\n</style>\n\n<script src={{d3Script}}></script>\n\n<script> \n")
})
