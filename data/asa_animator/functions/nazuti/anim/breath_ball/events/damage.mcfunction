# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..4] run function asa_animator:nazuti/anim/breath_ball/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound item.bucket.empty_lava master @a ~ ~ ~ 2 0.5
playsound item.bucket.fill_lava master @a ~ ~ ~ 2 0.7
particle witch ~ ~ ~ 0.3 0.3 0.3 1 60

summon marker ~ ~ ~ {Tags:["MonsterShot","NazutiPoison"]}
data modify entity @e[type=marker,tag=NazutiPoison,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
kill @s