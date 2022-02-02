# 7 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}

execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,tag=!MhdpHit,distance=..4] run function asa_animator:teo/anim/bomb_large/events/damage_b_sub
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0.5 0.5 0.5 0 10
playsound entity.generic.explode master @a ~ ~ ~ 3 0.7