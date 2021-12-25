# 4 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=0..5] run function asa_animator:dyno/anim/breath/events/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~4 ~ 0 0 0 0 1 force
particle lava ~ ~ ~ 0 0 0 0 15 force
particle large_smoke ~ ~ ~ 0 0 0 0.2 20 force
kill @s