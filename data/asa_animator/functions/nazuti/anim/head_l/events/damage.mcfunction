# 7 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=..4.5] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=..4.5] run function asa_animator:nazuti/anim/dash/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound block.grass.step master @a ~ ~ ~ 2 0.7
particle block grass_block ~ ~1.3 ~ 1 0 1 0 5