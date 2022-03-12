
particle end_rod ~ ~ ~ 0 0 0 0 1 force

scoreboard players add @s AsaMatrix 1

execute if entity @e[type=armor_stand,tag=MonsterRoot,distance=..10] run scoreboard players set @s AsaMatrix 20
execute positioned ~ ~ ~ unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 20
execute if entity @s[scores={AsaMatrix=20..}] positioned ~ ~ ~ run function mh_dp:item/flash/flash

tp @s ^ ^ ^1 ~ ~0.5