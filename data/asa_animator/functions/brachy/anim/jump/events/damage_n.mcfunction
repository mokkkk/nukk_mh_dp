# 7 Damage
 data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyParts,distance=..5.5] run function asa_animator:brachy/anim/jump/events/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute positioned ^2 ^ ^ run function asa_animator:brachy/manager/bomb/large
execute positioned ^-2 ^ ^ run function asa_animator:brachy/manager/bomb/large