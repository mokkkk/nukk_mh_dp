
particle squid_ink ~ ~0.6 ~ 0.1 0.1 0.1 0 1 force
particle dust 0.325 0.239 0.4 5 ~ ~0.6 ~ 0.3 0.3 0.3 0 5 force
execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!MagaraParts,distance=0..3] run function asa_animator:magara/anim/breath_3/events/damage

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=70..}] run function asa_animator:magara/anim/breath_3/events/damage

execute if entity @s[tag=!L,tag=!R] run tp @s ^ ^ ^0.6 ~ ~
execute if entity @s[tag=L,scores={AsaMatrix=..37}] run tp @s ^ ^ ^0.6 ~-3 ~
execute if entity @s[tag=R,scores={AsaMatrix=..37}] run tp @s ^ ^ ^0.6 ~3 ~
execute if entity @s[tag=L,scores={AsaMatrix=38..}] run tp @s ^ ^ ^0.6 ~ ~
execute if entity @s[tag=R,scores={AsaMatrix=38..}] run tp @s ^ ^ ^0.6 ~ ~

# 高度調整
    execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
    execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground