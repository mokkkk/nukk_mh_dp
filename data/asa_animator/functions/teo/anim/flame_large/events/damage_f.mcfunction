# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:0b}

scoreboard players set #mhdp_teo_temp AsaMatrix 0
execute positioned ^ ^ ^ if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flame_large/events/damage_f_
scoreboard players reset #mhdp_teo_temp

execute as @a[tag=MhdpDHit] run function mh_dp:player/knockback/start_wind
execute as @e[tag=MhdpDHit] run function asa_animator:teo/anim/flame_large/events/damage_f_sub
tag @e[tag=MhdpDHit] remove MhdpDHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound item.firecharge.use master @a ~ ~ ~ 2 0.5