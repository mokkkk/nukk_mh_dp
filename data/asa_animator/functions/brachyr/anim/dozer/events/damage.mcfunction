# 6 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/anim/dozer/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound block.grass.hit master @a ~ ~ ~ 2 0.5
particle block grass_block ~ ~ ~ 1 0.1 1 0 5
particle lava ~ ~ ~ 1 0.1 1 1 1
execute at @s run tp @s ^ ^ ^0.7
execute if entity @s[tag=Phase2] run function asa_animator:brachyr/manager/bomb/red/set