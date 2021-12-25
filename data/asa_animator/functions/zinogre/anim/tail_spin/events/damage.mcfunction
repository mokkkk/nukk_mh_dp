# 5 Damage
execute unless entity @s[tag=IsThunder] run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
execute if entity @s[tag=IsThunder] run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:1b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^-2 as @e[type=!armor_stand,type=!marker,tag=!ZinogreParts,distance=0..5] run function asa_animator:zinogre/anim/tail_spin/events/damage_sub
particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 5
execute if entity @s[tag=IsThunder] run particle sneeze ~ ~ ~ 0.3 0.3 0.3 0.1 10