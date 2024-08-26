# id:当前主题的id。需要额外为地图信息指定主题id。
data modify storage brc:theme_info id set value "brct"
data modify storage brc:map_info theme set value "brct"
# title:主题标题。
data modify storage brc:theme_info title set value '{"translate":"theme.brct.title","fallback":"Tutorial"}'
# summary:主题摘要。
data modify storage brc:theme_info summary set value '{"translate":"theme.brct.summary","fallback":"BrC Tutorial"}'
# desc:主题描述。
data modify storage brc:theme_info desc set value '{"translate":"theme.brct.desc","fallback":"Bedrock Cage Tutorial"}'
# start_map:此主题的起始地图。起始地图的路径为map/<id>/<start_map>。
data modify storage brc:theme_info start_map set value "start"
# 返回值用于验证
return 1