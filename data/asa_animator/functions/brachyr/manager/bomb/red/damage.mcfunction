# 7 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:3,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=0..4] run function asa_animator:brachyr/manager/bomb/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~-0.5 ~ 0 0 0 0 1
particle lava ~ ~-0.5 ~ 0 0 0 0 15
particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20

execute if entity @e[type=armor_stand,tag=BrachyRRoot,tag=!AnmDamage,distance=0..7] as @e[type=armor_stand,tag=BrachyRRoot,distance=0..4] run function asa_animator:brachyr/manager/start_damage_animation

kill @s