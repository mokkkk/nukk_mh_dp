# 4 Damage
data merge storage score_damage: {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!ZinogreParts,distance=0..3] run function asa_animator:zinogre/anim/hand_2/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
particle block grass ~ ~ ~ 0.5 0 0.5 0 20

execute if score @s AsaMatrix matches 15 as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] at @s run particle explosion ~ ~1.4 ~ 0.4 0.4 0.4 0 5
execute if score @s AsaMatrix matches 40 as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] at @s run particle explosion ~ ~1.4 ~ 0.4 0.4 0.4 0 5