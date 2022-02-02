# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}

scoreboard players set #mhdp_teo_temp AsaMatrix 0
execute positioned ^ ^ ^ if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flame_nova/events/damage_f_
scoreboard players reset #mhdp_teo_temp

execute as @e[tag=MhdpHit] at @s run function asa_animator:teo/anim/flame_nova/events/damage_f_sub
tag @e[tag=MhdpHit] remove MhdpHit
playsound item.firecharge.use master @a ~ ~ ~ 2 0.5