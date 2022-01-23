# 7 Damage
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NargaParts,distance=..2] run function asa_animator:narga/anim/tail_bitan/events/damage_sub
particle explosion ~ ~ ~ 0.3 0.3 0.3 0 2
particle block grass_block ~ ~ ~ 0.5 0.1 0.5 0 10