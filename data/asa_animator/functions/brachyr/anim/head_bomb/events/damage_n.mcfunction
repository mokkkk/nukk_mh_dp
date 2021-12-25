# 6 Damage
 data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/anim/head_bomb/events/damage_sub
function asa_animator:brachyr/manager/bomb/large