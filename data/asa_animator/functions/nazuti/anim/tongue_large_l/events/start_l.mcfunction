
execute as @e[type=marker,tag=NazutiTongue] at @s run tp @s ~ ~ ~ ~-12 ~
execute as @e[type=marker,tag=NazutiTongue] at @s positioned as @e[type=armor_stand,tag=NazutiParts,tag=HeadU] positioned ^ ^1.2 ^1 run tp @s ~ ~ ~
scoreboard players set @e[type=marker,tag=NazutiTongue] AsaMatrix 10
execute as @e[type=marker,tag=NazutiTongue] at @s run function asa_animator:nazuti/anim/tongue_large_l/events/tongue_l