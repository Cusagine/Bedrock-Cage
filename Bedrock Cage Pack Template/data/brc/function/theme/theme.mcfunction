# id:当前主题的id。需要额外为地图信息指定主题id。
data modify storage brc:theme_info id set value "theme"
data modify storage brc:map_info theme set value "theme"
# title:主题标题。应当为文本组件。
data modify storage brc:theme_info title set value '"title"'
# summary:主题摘要。应当为文本组件。
data modify storage brc:theme_info summary set value '"summary"'
# desc:主题描述。应当为文本组件。
data modify storage brc:theme_info desc set value '"desc"'
# start_map:此主题的起始地图。起始地图的路径为map/<id>/<start_map>。
data modify storage brc:theme_info start_map set value "map"
# 返回值用于验证
return 1