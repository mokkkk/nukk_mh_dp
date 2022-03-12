# 8.5 Damage
data modify storage score_damage: Argument set value {Damage:17.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:0b}

scoreboard players set #mhdp_teo_temp AsaMatrix 0
execute positioned ^ ^ ^ if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flame_nova/events/damage_b_
scoreboard players reset #mhdp_teo_temp
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound item.firecharge.use master @a ~ ~ ~ 2 0.5