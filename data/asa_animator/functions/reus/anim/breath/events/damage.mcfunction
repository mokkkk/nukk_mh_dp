# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[type=!armor_stand,type=!marker,tag=!ReusParts,distance=0..4] run function asa_animator:reus/anim/breath/events/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0 0 0 0 15
particle large_smoke ~ ~ ~ 0 0 0 0.2 15
kill @s