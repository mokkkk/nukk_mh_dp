# 8 Damage
data merge storage score_damage: {Damage:16.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[type=!armor_stand,type=!marker,tag=!ReusParts,distance=0..3] run function asa_animator:reus/anim/flying_breath_large/events/damage_sub
particle explosion ~ ~ ~ 0.3 0.3 0.3 0 10 force
particle lava ~ ~ ~ 0 0 0 0 5 force
playsound item.firecharge.use master @a ~ ~ ~ 3 0.5
kill @s