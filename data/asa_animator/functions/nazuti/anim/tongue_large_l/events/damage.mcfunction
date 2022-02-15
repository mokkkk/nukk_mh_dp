# 3 Damage
data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=0..7] run function mh_dp:player/knockback/start_dwind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..7] run function asa_animator:nazuti/anim/tongue_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType