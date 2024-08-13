$execute if function brc:theme/$(input_theme) run function brc:theme/$(input_theme)
$execute if function brc:theme/$(input_theme) run return run tellraw @a {"translate":"event.brc.change_theme.success","fallback":"","color":"yellow"}
tellraw @a {"translate":"event.brc.change_theme.fail","fallback":"Failed to change theme","color":"red"}