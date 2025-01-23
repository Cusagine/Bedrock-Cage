data modify storage brc:stage deduction set value 0b
tellraw @a[x=-17,y=-17,z=-17] {"translate":"event.brc.deduction_mode.off.text","fallback":"\"No, we're not the spectator.\"","color":"green"}
tellraw @a[x=-17,y=-17,z=-17] {"translate":"event.brc.deduction_mode.off","fallback":"Deduction Mode disabled","color":"yellow"}