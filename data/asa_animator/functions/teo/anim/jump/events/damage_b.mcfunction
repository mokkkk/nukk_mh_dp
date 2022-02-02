# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..5.5] run function asa_animator:teo/anim/jump/events/damage_sub
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle lava ~ ~1 ~ 1 1 1 0 10
playsound entity.generic.explode master @a ~ ~ ~ 2 0.6