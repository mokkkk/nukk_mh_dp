# 4.5 Damage
data merge storage score_damage: {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/anim/punch_l/events/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute unless entity @s[tag=Phase2] run function asa_animator:brachyr/manager/bomb/large
execute if entity @s[tag=Phase2] positioned ^ ^ ^1 run function asa_animator:brachyr/manager/bomb/red/set
execute if entity @s[tag=Phase2] positioned ^3 ^ ^ run function asa_animator:brachyr/manager/bomb/red/set
execute if entity @s[tag=Phase2] positioned ^-3 ^ ^ run function asa_animator:brachyr/manager/bomb/red/set