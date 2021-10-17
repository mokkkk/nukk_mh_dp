
particle flame ~ ~ ~ 0.3 0.3 0.3 0 5 force
particle lava ~ ~ ~ 0.3 0.3 0.3 0 1

execute if entity @e[type=!armor_stand,type=!marker,tag=!ReusParts,distance=0..3] run function asa_animator:reus/anim/breath/events/damage

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 30
execute if score @s AsaMatrix matches 30.. run function asa_animator:reus/anim/breath/events/damage

tp @s ^ ^ ^1