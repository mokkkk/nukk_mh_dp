# 5 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=..8] run function mh_dp:player/knockback/start_wind
execute positioned ^ ^ ^-2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=..4] run function asa_animator:nazuti/anim/press/events/damage_sub
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=..4] run function asa_animator:nazuti/anim/press/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound block.grass.step master @a ~ ~ ~ 2 0.7
playsound entity.hoglin.step master @a ~ ~ ~ 3 0.5
playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
particle explosion ~ ~0.5 ~ 2 0 2 0 10
particle block grass_block ~ ~0.5 ~ 1 0 1 0 30