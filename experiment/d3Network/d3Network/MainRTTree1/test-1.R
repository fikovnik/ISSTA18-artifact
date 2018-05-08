library(testthat)

.Random.seed <<- .ext.seed

test_that("MainRTTree1", {
    expect_equal(d3Network:::MainRTTree1(), "var width = {{width}}\nheight = {{height}};\n\nvar diameter = {{diameter}};\n\nvar tree = d3.layout.tree()\n.size([360, diameter / 2 - 120])\n.separation(function(a, b) { return (a.parent == b.parent ? 1 : 2) / a.depth; });\n\nvar diagonal = d3.svg.diagonal.radial()\n.projection(function(d) { return [d.y, d.x / 180 * Math.PI]; });\n\nvar svg = d3.select(\"{{parentElement}}\").append(\"svg\")\n.attr(\"width\", width)\n.attr(\"height\", height)\n.append(\"g\")\n.attr(\"transform\", \"translate(\" + diameter / 2 + \",\" + diameter / 2 + \")\"); \n")
})
