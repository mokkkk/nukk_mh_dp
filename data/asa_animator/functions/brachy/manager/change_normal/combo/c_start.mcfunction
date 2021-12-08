
execute unless entity @s[tag=IsAnger] if predicate asa_animator:random/070 run tag @s add SComboC
execute if entity @s[tag=IsAnger] if predicate asa_animator:random/050 run tag @s add SComboC
execute unless entity @s[tag=SComboC] run tag @s add LComboC
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0