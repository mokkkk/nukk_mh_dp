# 7 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:4,Knockback:0b}
execute as @a[distance=..5.5] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=..5.5] run function asa_animator:ruko/anim/jump/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType