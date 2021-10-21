scoreboard players set #mhdp_reus_actcount_phase AsaMatrix 0
scoreboard players set #mhdp_reus_actcount AsaMatrix 4
# 近距離，確立でBJB
execute if predicate asa_animator:random/070 if entity @e[distance=..13,tag=ReusAttackTarget] run tag @s add AnmBjb
execute unless entity @s[tag=AnmBjb] run tag @s add AnmFly