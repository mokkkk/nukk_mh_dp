# 4.5 Damage
data merge storage score_damage: {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..3] run function asa_animator:tiga/anim/shot_l/events/damage_sub
particle explosion ~ ~0.3 ~ 0.5 0.1 0.5 0 3
particle block grass_block ~ ~0.3 ~ 0.5 0.1 0.5 0 10
playsound block.grass.step master @a ~ ~ ~ 2 0.7