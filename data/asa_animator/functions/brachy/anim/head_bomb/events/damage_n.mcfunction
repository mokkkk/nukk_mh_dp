# 4 Damage
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=..4] run function asa_animator:brachy/anim/head_bomb/events/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 30
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
function asa_animator:brachy/manager/bomb/large