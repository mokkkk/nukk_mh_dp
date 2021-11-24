# 2.5 Damage
data merge storage score_damage: {Damage:5.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute if entity @s[tag=IsHeatTail] run data modify storage score_damage: Damage set value 7.0f
execute if entity @s[tag=IsHeatTail] run data modify storage mhdp: Epf set value 2
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..4] run function asa_animator:dyno/anim/slash_thrust_l/events/damage_sub
function asa_animator:dyno/manager/model/tail_heat_count