# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/normal/tail_whip/events/shot/damage_sub
playsound block.stone.break master @a ~ ~ ~ 2 1
particle explosion ~ ~ ~ 0.5 0.5 0.5 0 3
particle block sandstone ~ ~ ~ 0.1 0.1 0.1 0 30
kill @s