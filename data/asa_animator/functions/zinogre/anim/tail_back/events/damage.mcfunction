# 2-2.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:5.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1}
execute positioned ^ ^ ^ as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..2.5] run tag @s add MhdpHit
execute positioned ^ ^ ^-3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..2.5] run tag @s add MhdpHit
execute positioned ^ ^ ^-5 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..2.5] run tag @s add MhdpHit
execute positioned ^ ^ ^-7 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..2.5] run tag @s add MhdpHit
execute as @e[tag=MhdpHit] run function asa_animator:zinogre/anim/tail_back/events/damage_sub
tag @e remove MhdpHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound block.grass.step master @a ~ ~ ~ 2 0.6

function asa_animator:zinogre/anim/tail_back/events/particle_n
execute if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/tail_forward/events/particle_t