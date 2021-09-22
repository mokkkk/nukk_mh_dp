# 2 Damage
data merge storage score_damage: {Damage:4.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!ReusParts,distance=0..4] run function asa_animator:reus/flyingattack/effect/damage_sub
execute as @e[type=!armor_stand,type=!marker,tag=!ReusParts,distance=0..4] run effect give @s poison 10 0