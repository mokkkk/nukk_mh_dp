# 8 ~ 4 Damage
data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:3,Knockback:0b}
execute as @a[distance=4..5] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/manager/bomb/damage_sub
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=4..5] run function asa_animator:brachyr/manager/bomb/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~-0.5 ~ 0 0 0 0 15
particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20