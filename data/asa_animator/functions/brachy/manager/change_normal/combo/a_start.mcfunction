
execute unless entity @s[tag=IsAnger] if predicate asa_animator:random/070 run tag @s add SComboA
execute if entity @s[tag=IsAnger] if predicate asa_animator:random/050 run tag @s add SComboA
execute unless entity @s[tag=SComboA] run tag @s add LComboA
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0