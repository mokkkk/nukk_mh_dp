# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^5 as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..4] run function asa_animator:tiga/anim/hand_l/events/damage_sub
execute positioned ^ ^ ^5 run particle block grass_block ~ ~0.1 ~ 0.5 0.1 0.5 0 3
playsound block.grass.step master @a ~ ~ ~ 2 0.7