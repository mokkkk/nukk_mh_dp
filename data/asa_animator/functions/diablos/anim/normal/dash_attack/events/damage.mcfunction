# 4 Damage
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..4.5] run function asa_animator:diablos/anim/normal/dash_attack/events/damage_sub
playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s run particle cloud ~ ~2 ~ 0.5 1 0.5 0.1 30