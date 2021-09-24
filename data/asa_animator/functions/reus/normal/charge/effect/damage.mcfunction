# 9 Damage
data merge storage score_damage: {Damage:18.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[type=!armor_stand,type=!marker,tag=!ReusParts,distance=0..5] run function asa_animator:reus/normal/charge/effect/damage_sub
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle lava ~ ~ ~ 0 0 0 0 5 force
playsound entity.generic.explode master @a ~ ~ ~ 3 0.7