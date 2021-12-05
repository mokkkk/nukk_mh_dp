
execute unless entity @s[tag=IsAnger] if predicate asa_animator:random/070 run tag @s add SComboD
execute if entity @s[tag=IsAnger] if predicate asa_animator:random/050 run tag @s add SComboD
execute unless entity @s[tag=SComboD] run tag @s add LComboD
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0