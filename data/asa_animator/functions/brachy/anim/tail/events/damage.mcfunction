# 2.5 Damage
data merge storage score_damage: {Damage:5.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=..4] run function asa_animator:brachy/anim/tail/events/damage_sub
playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
particle cloud ~ ~1 ~ 0.3 0.3 0.3 0.1 10