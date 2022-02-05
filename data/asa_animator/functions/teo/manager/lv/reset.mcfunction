
scoreboard players set #mhdp_teo_lv AsaMatrix 0
scoreboard players set #mhdp_teo_actcount_lv AsaMatrix 0
scoreboard players operation #mhdp_teo_sp_damage AsaMatrix = #mhdp_teo_sp_damage_max AsaMatrix

execute if entity @s[tag=IsFire,tag=!Changed] run tag @s add IsBomb
execute if entity @s[tag=IsFire,tag=IsBomb,tag=!Changed] run tag @s add Changed
execute if entity @s[tag=Changed,tag=IsFire,tag=IsBomb] run tag @s remove IsFire

execute if entity @s[tag=IsBomb,tag=!Changed] run tag @s add IsFire
execute if entity @s[tag=IsFire,tag=IsBomb,tag=!Changed] run tag @s add Changed
execute if entity @s[tag=Changed,tag=IsFire,tag=IsBomb] run tag @s remove IsBomb

tag @s remove Changed