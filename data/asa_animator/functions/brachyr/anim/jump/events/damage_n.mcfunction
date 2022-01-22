# 4.5 Damage
 data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/anim/jump/events/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute unless entity @s[tag=Phase2] unless entity @s[tag=ActiveArmL] positioned ^1.5 ^ ^ run function asa_animator:brachyr/manager/bomb/large
execute unless entity @s[tag=Phase2] unless entity @s[tag=ActiveArmR] positioned ^-1.5 ^ ^ run function asa_animator:brachyr/manager/bomb/large