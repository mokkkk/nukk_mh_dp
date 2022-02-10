# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=..3] run function asa_animator:nazuti/anim/tail/events/damage_sub
execute as @a[distance=..6] run function mh_dp:player/knockback/start_wind
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound block.grass.step master @a ~ ~ ~ 2 0.7
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
playsound block.grass.break master @a ~ ~ ~ 2 0.7
particle explosion ~ ~0.5 ~ 2 0 2 0 10
particle block grass_block ~ ~0.5 ~ 1 0 1 0 30