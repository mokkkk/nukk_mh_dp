# 6 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:3,Knockback:0b}
execute as @a[distance=0..4] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=0..4] run function asa_animator:teo/manager/bomb/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0 0 0 0 15
particle large_smoke ~ ~ ~ 0 0 0 0.2 20
kill @s