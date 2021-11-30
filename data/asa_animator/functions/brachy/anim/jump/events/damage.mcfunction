# 4.5 Damage
data merge storage score_damage: {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=..4.5] run function asa_animator:brachy/anim/jump/events/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute positioned ^1 ^ ^ run function asa_animator:brachy/manager/bomb/normal
execute positioned ^-1 ^ ^ run function asa_animator:brachy/manager/bomb/normal