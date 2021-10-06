# 5 Damage
execute unless entity @s[tag=IsThunder] run data merge storage score_damage: {Damage:10.0f, BypassArmor:0b}
execute if entity @s[tag=IsThunder] run data merge storage score_damage: {Damage:10.0f, BypassArmor:1b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!marker,tag=!ZinogreParts,distance=0..3.5] run function asa_animator:zinogre/anim/jump_attack/events/damage_sub
execute positioned ^ ^ ^3 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 20
playsound item.trident.throw master @a ~ ~ ~ 3 0.5
execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 1
execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.7