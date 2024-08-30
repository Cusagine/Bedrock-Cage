execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"brxt:cache","path":"CondebAftershockCount"},"range":{"min":1}} as @e[tag=condeb.aftershock.victim] run function condeb:enchantments/aftershock/damage with storage brxt:cache {}
execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"brxt:cache","path":"CondebAftershockCount"},"range":{"min":2}} as @e[tag=condeb.aftershock.victim] run function condeb:enchantments/aftershock/damage with storage brxt:cache {}
execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"brxt:cache","path":"CondebAftershockCount"},"range":{"min":3}} as @e[tag=condeb.aftershock.victim] run function condeb:enchantments/aftershock/damage with storage brxt:cache {}
execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"brxt:cache","path":"CondebAftershockCount"},"range":{"min":4}} as @e[tag=condeb.aftershock.victim] run function condeb:enchantments/aftershock/damage with storage brxt:cache {}
execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"brxt:cache","path":"CondebAftershockCount"},"range":{"min":5}} as @e[tag=condeb.aftershock.victim] run function condeb:enchantments/aftershock/damage with storage brxt:cache {}
data remove storage brxt:cache CondebAftershockDamage
data remove storage brxt:cache CondebAftershockCount
tag @e remove condeb.aftershock.attacker
tag @e remove condeb.aftershock.victim