data modify storage brc:stage deduction set value 1b
tellraw @a[x=-17,y=-17,z=-17] {"translate":"event.brc.deduction_mode.on.text","fallback":"\"Yeah, we're just the passerby.\"","color":"green"}
tellraw @a[x=-17,y=-17,z=-17] {"translate":"event.brc.deduction_mode.on","fallback":"Deduction Mode enabled","color":"yellow"}