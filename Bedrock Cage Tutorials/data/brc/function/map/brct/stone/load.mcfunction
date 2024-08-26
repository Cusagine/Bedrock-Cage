scoreboard objectives add Back trigger {"translate":"objective.brct.back_trigger","fallback":"Back Trigger"}
scoreboard players enable @a Back
tellraw @a {"translate":"map.brct.stone.text.1","fallback":"The outside of the cage is another cage.","color":"yellow"}
tellraw @a {"translate":"map.brct.stone.text.2","fallback":"Sometimes gateways are hidden. Now, dig it up.","color":"yellow"}
schedule function brc:map/brct/stone/extra_text 5s