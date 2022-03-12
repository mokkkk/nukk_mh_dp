# 3 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..3.5] run function asa_animator:nazuti/anim/tail/events/shot/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound block.stone.break master @a ~ ~ ~ 2 1
particle explosion ~ ~ ~ 0.5 0.5 0.5 0 3
particle block sandstone ~ ~ ~ 0.1 0.1 0.1 0 30
kill @s