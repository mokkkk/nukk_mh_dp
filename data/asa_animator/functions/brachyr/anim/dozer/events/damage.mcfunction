# 6 Damage
 data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/anim/dozer/events/damage_sub
playsound block.grass.hit master @a ~ ~ ~ 2 0.5
particle block grass_block ~ ~ ~ 1 0.1 1 0 5
particle lava ~ ~ ~ 1 0.1 1 1 1
execute at @s run tp @s ^ ^ ^0.7
execute if entity @s[tag=Phase2] run function asa_animator:brachyr/manager/bomb/red/set