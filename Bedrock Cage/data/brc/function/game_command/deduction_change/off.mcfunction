data modify storage brc:stage deduction set value 0b
tellraw @a {"translate":"event.brc.deduction_mode.off.text","fallback":"\"No, we're not the spectator.\"","color":"green"}
tellraw @a {"translate":"event.brc.deduction_mode.off","fallback":"Deduction Mode disabled","color":"yellow"}