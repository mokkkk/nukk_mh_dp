# 7 Damage
execute unless entity @s[tag=IsThunder] run data merge storage score_damage: {Damage:14.0f, BypassArmor:0b}
execute if entity @s[tag=IsThunder] run data merge storage score_damage: {Damage:14.0f, BypassArmor:1b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!marker,tag=!ZinogreParts,distance=0..4] run function asa_animator:zinogre/anim/tail_whip/events/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 3 0.7
function asa_animator:zinogre/anim/tail_whip/events/particle
execute if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/tail_whip/events/particle_thunder