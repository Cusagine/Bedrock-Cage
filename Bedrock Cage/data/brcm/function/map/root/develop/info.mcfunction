# id:当前地图。
# title:地图标题。
# summary:地图摘要。
# desc:地图描述。
# content:要加载的模板的命名空间ID。
# large:地图是否占4个区块。 1b——4个 0b——1个
# next_pool:地图使用的下一个抽取池。
# exit_state:是否默认开启出口。（1-不处理；0-加载地图时替换折跃门）
# exit_condition:开启出口的条件（clear-杀死所有已标记实体；none-无；boss-杀死boss（brc:boss或标签boss）实体）
# gamemode:玩家使用的游戏模式
data merge storage brc:map_info {id:"develop",title:'"Develop"',summary:'"The 2 Develop Map"',desc:'"The 2 Develop Map."',content:"brcm:test_surv",large:0b,next_pool:"root/challenge",exit_state:1b,exit_condition:"none",gamemode:"survival"}