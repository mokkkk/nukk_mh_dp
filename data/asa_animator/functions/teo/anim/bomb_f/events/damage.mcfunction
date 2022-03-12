# 7 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..4.5] run function asa_animator:teo/anim/bomb_n/events/damage_sub
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1
particle lava ~ ~1 ~ 1 1 1 0 10
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7