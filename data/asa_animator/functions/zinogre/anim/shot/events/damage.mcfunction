# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:1b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!ZinogreParts,distance=0..3] run function asa_animator:zinogre/anim/shot/events/damage_sub
playsound block.glass.break master @a ~ ~ ~ 1 2
kill @s