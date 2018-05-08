library(testthat)

.Random.seed <<- .ext.seed

test_that("TreeStyleSheet", {
    expect_equal(d3Network:::TreeStyleSheet(), "<style>\n.link {\nfill: none;\nstroke: {{linkColour}};\nopacity: {{linkOpacity}};\nstroke-width: 1.5px;\n}\n.node circle {\nstroke: #fff;\nopacity: {{opacity}};\nstroke-width: 1.5px;\n}\n.node:not(:hover) .nodetext {\ndisplay: none;\n}\ntext {\nfont: {{fontsize}}px serif;\nopacity: {{opacity}};\npointer-events: none;\n}\n</style>\n\n<script src={{d3Script}}></script>\n\n<script> \n")
})
