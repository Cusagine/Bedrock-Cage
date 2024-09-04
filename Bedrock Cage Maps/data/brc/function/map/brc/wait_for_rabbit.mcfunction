# id:当前地图的id。建议与函数名称一致。
data modify storage brc:map_info id set value "wait_for_rabbit"
# title:地图标题。会在载入地图时用作标题。
data modify storage brc:map_info title set value "守株待兔"
# summary:地图摘要。会在载入地图时用作副标题。
data modify storage brc:map_info summary set value "我们终于等到了兔子。"
# desc:地图描述。
data modify storage brc:map_info desc set value "机遇比平凡更诱人。于是，我们选择等待。最后，我们等到了像当时一样使我们改变的机遇。"
# content:要加载的模板的命名空间ID。
data modify storage brc:map_info content set value "brc:wait_for_rabbit"
# large:地图是否占4个区块。 （true——4个 false——1个）
data modify storage brc:map_info large set value false
# next_pool:地图使用的下一个抽取池。用于决定下一个地图。
data modify storage brc:map_info next_pool set value "menu"
# exit_state:是否默认开启出口。（true-目标点变为折跃门；false-不处理）
data modify storage brc:map_info exit_state set value false
# exit_condition:开启出口的条件（clear-杀死所有目标实体；none-无）
data modify storage brc:map_info exit_condition set value "clear"
# death_result:死亡后的处理方式（none-无；quit：死亡后退出游戏）
data modify storage brc:map_info death_result set value "none"
# gamemode:玩家使用的游戏模式（adventure-冒险模式；survival-生存模式。不推荐填写为其他游戏模式）
data modify storage brc:map_info gamemode set value "survival"
# enable_tick:是否启用地图内游戏每刻函数（true-启用；false-不启用）
data modify storage brc:map_info enable_tick set value false