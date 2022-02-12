# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=..3.5] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3.5] run function asa_animator:teo/anim/dash/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle lava ~ ~2 ~ 2 2 2 0 3