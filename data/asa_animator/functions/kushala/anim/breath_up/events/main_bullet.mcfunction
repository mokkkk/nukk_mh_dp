
particle explosion ~ ~ ~ 0.3 0.3 0.3 0 1 force
particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 5

execute if entity @e[type=!armor_stand,type=!marker,tag=!KushalaParts,distance=0..3] positioned ~ ~ ~ run function asa_animator:kushala/anim/breath/events/damage

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=20}] facing entity @e[tag=KushalaTarget,sort=random,limit=1] feet run tp @s ~ ~ ~ ~ ~

execute unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 50
execute if entity @s[scores={AsaMatrix=50..}] run function asa_animator:kushala/anim/breath/events/damage

execute if entity @s[scores={AsaMatrix=..20}] run tp @s ^ ^ ^1
execute if entity @s[scores={AsaMatrix=21..}] run tp @s ^ ^ ^1.5