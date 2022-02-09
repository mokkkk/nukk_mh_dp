# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=..3] run function asa_animator:nazuti/anim/claw_l/events/damage_sub
playsound block.grass.step master @a ~ ~ ~ 2 0.7
playsound block.grass.step master @a ~ ~ ~ 2 0.5
playsound block.grass.break master @a ~ ~ ~ 2 0.5
particle block grass_block ~ ~0.5 ~ 1 0 1 0 30