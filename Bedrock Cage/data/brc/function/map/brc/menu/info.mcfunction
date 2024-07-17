# id:当前地图。
# title:地图标题。
# summary:地图摘要。
# desc:地图描述。
# content:要加载的模板的命名空间ID。
# large:地图是否占4个区块。 1b——4个 0b——1个
# next_pool:地图使用的下一个抽取池。
# exit_state:是否默认开启出口。（1-目标点变为折跃门；0-不处理）
# exit_condition:开启出口的条件（clear-杀死所有已标记实体；none-无；boss-杀死boss（#brc:boss或标签boss）实体）
# gamemode:玩家使用的游戏模式
data merge storage brc:map_info {id:"menu",title:'{"translate":"map.brc.menu.title","fallback":"The Fate Hall"}',summary:'{"translate":"map.brc.menu.summary","fallback":"Welcome back."}',desc:'{"translate":"map.brc.menu.desc","fallback":"The land of The Start and The End.\\nThe map loaded when idling the game. You can modify settings, change themes, or start new games here."}',content:"brc:menu",large:1b,next_pool:"",exit_state:1b,exit_condition:"none",gamemode:"adventure"}