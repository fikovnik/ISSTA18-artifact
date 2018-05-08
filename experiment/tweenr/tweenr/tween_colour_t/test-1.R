library(testthat)

.Random.seed <<- .ext.seed

test_that("tween_colour_t", {
    colours <- grDevices::colours
    expect_equal(tweenr:::tween_colour_t(data = list(colours()[1:4], colours()[1:2], colours()[25:100]), n = 100), list(c("#FFFFFF", 
        "#FFFFFF", "#FEFFFF", "#FEFEFF", "#FDFEFF", "#FDFEFF", "#FCFEFF", "#FCFEFF", "#FBFDFF", "#FBFDFF", "#FAFDFF", "#FAFDFF", 
        "#FAFCFF", "#F9FCFF", "#F9FCFF", "#F8FCFF", "#F8FCFF", "#F7FBFF", "#F7FBFF", "#F6FBFF", "#F6FBFF", "#F5FBFF", "#F5FAFF", 
        "#F5FAFF", "#F4FAFF", "#F4FAFF", "#F3F9FF", "#F3F9FF", "#F2F9FF", "#F2F9FF", "#F1F9FF", "#F1F8FF", "#F0F8FF", "#F0F8FF", 
        "#F0F8FE", "#F1F7FD", "#F1F7FB", "#F1F6FA", "#F2F6F9", "#F2F6F8", "#F3F5F6", "#F3F5F5", "#F3F4F4", "#F4F4F3", "#F4F4F2", 
        "#F4F3F0", "#F4F3EF", "#F5F2EE", "#F5F2ED", "#F5F2EC", "#F6F1EA", "#F6F1E9", "#F6F0E8", "#F7F0E7", "#F7F0E5", "#F7EFE4", 
        "#F7EFE3", "#F8EFE2", "#F8EEE1", "#F8EEDF", "#F9EDDE", "#F9EDDD", "#F9EDDC", "#F9ECDB", "#FAECD9", "#FAEBD8", "#FAEBD7", 
        "#FAEBD7", "#FAEBD7", "#FAEBD7", "#FBEBD7", "#FBECD8", "#FBECD8", "#FBECD8", "#FBECD8", "#FBECD8", "#FCECD8", "#FCECD8", 
        "#FCECD8", "#FCEDD9", "#FCEDD9", "#FCEDD9", "#FCEDD9", "#FDEDD9", "#FDEDD9", "#FDEDD9", "#FDEDD9", "#FDEEDA", "#FDEEDA", 
        "#FDEEDA", "#FEEEDA", "#FEEEDA", "#FEEEDA", "#FEEEDA", "#FEEEDA", "#FEEFDB", "#FFEFDB", "#FFEFDB", "#FFEFDB", "#FFEFDB"), 
        c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FEFFFF", "#FEFFFF", "#FEFFFF", "#FEFFFF", "#FEFEFF", "#FEFEFF", "#FDFEFF", 
            "#FDFEFF", "#FDFEFF", "#FDFEFF", "#FDFEFF", "#FDFEFF", "#FDFEFF", "#FCFEFF", "#FCFEFF", "#FCFEFF", "#FCFEFF", 
            "#FCFEFF", "#FCFDFF", "#FCFDFF", "#FBFDFF", "#FBFDFF", "#FBFDFF", "#FBFDFF", "#FBFDFF", "#FBFDFF", "#FAFDFF", 
            "#FAFDFF", "#FAFDFF", "#FAFDFF", "#FAFDFF", "#FAFDFF", "#FAFCFF", "#F9FCFF", "#F9FCFF", "#F9FCFF", "#F9FCFF", 
            "#F9FCFF", "#F9FCFF", "#F9FCFF", "#F8FCFF", "#F8FCFF", "#F8FCFF", "#F8FCFF", "#F8FCFF", "#F8FCFF", "#F7FBFF", 
            "#F7FBFF", "#F7FBFF", "#F7FBFF", "#F7FBFF", "#F7FBFF", "#F7FBFF", "#F6FBFF", "#F6FBFF", "#F6FBFF", "#F6FBFF", 
            "#F6FBFF", "#F6FBFF", "#F5FBFF", "#F5FAFF", "#F5FAFF", "#F5FAFF", "#F5FAFF", "#F5FAFF", "#F5FAFF", "#F4FAFF", 
            "#F4FAFF", "#F4FAFF", "#F4FAFF", "#F4FAFF", "#F4FAFF", "#F4FAFF", "#F3FAFF", "#F3F9FF", "#F3F9FF", "#F3F9FF", 
            "#F3F9FF", "#F3F9FF", "#F2F9FF", "#F2F9FF", "#F2F9FF", "#F2F9FF", "#F2F9FF", "#F2F9FF", "#F2F9FF", "#F1F9FF", 
            "#F1F9FF", "#F1F8FF", "#F1F8FF", "#F1F8FF", "#F1F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF"), c("#FFEBCD", 
            "#0000FF", "#0000FF", "#0000EE", "#0000CD", "#00008B", "#8A2BE2", "#A62583", "#A52A2A", "#D13535", "#FF4040", 
            "#EE3B3B", "#DD3737", "#CD3333", "#8B2323", "#DEB887", "#FFD39B", "#EEC591", "#CDAA7D", "#AB8E69", "#8B7355", 
            "#5F9EA0", "#98F5FF", "#8EE5EE", "#7AC5CD", "#66A5AB", "#53868B", "#7FFF00", "#7FFF00", "#76EE00", "#66CD00", 
            "#458B00", "#D2691E", "#E87421", "#FF7F24", "#F67A22", "#EE7621", "#DD6E1F", "#CD661D", "#8B4513", "#C36131", 
            "#FF7F50", "#FF7256", "#EE6A50", "#CD5B45", "#8B3E2F", "#8E698A", "#6495ED", "#FFF8DC", "#FFF8DC", "#EEE8CD", 
            "#CDC8B1", "#8B8878", "#00FFFF", "#00FFFF", "#00F6F6", "#00EEEE", "#00DDDD", "#00CDCD", "#00ABAB", "#008B8B", 
            "#00008B", "#008B8B", "#848956", "#B8860B", "#DB9F0D", "#FFB90F", "#EEAD0E", "#DDA10D", "#CD950C", "#8B6508", 
            "#9F865E", "#A9A9A9", "#006400", "#648759", "#A9A9A9", "#B5B08B", "#BDB76B", "#AA6D7F", "#8B008B", "#774B5F", 
            "#556B2F", "#CAFF70", "#BCEE68", "#A2CD5A", "#6E8B3D", "#FF8C00", "#FF8600", "#FF7F00", "#EE7600", "#CD6600", 
            "#AB5500", "#8B4500", "#9E3C6B", "#9932CC", "#BF3EFF", "#B23AEE", "#9A32CD", "#68228B", "#8B0000")))
})
