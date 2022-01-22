scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmSp
kill @e[type=marker,tag=KushalaSpTornado]
scoreboard players set #mhdp_kushala_lv AsaMatrix 0
scoreboard players set #mhdp_kushala_actcount_lv AsaMatrix 0
scoreboard players set #mhdp_kushala_actcount AsaMatrix 0
weather rain