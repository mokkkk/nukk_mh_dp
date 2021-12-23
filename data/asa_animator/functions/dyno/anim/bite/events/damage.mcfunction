# 2 Damage
 data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute if entity @s[tag=IsHeatHead] run data modify storage score_damage: Damage set value 5.0f
execute if entity @s[tag=IsHeatHead] run data modify storage mhdp: Epf set value 2
execute if entity @s[tag=IsHeatHead] run particle flame ~ ~3 ~ 0.5 0.5 0.5 0.1 30
execute if entity @s[tag=IsHeatHead] run particle lava ~ ~3 ~ 0.5 0.5 0.5 0.1 10
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..3] run function asa_animator:dyno/anim/bite/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2