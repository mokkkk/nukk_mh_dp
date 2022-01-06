# 4 Damage
 data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/tail_shot/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 0.8
particle explosion ~ ~ ~ 2 0 2 0 15
particle block sand ~ ~ ~ 1 0.5 1 1 50

execute positioned ~ ~1 ~ rotated ~-40 -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start
execute positioned ~ ~1 ~ rotated ~ -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start
execute positioned ~ ~1 ~ rotated ~40 -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start