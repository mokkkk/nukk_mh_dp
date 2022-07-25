# 4..5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:3}
execute if entity @s[tag=IsThunder] run data modify storage score_damage: Argument.BypassArmor set value 1b
execute positioned ^ ^ ^ as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..3.5] run tag @s add MhdpHit
execute positioned ^ ^ ^-3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..3.5] run tag @s add MhdpHit
execute positioned ^ ^ ^-5 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..2.5] run tag @s add MhdpHit
execute unless entity @s[tag=DestroyTail] positioned ^ ^ ^-7 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..2.5] run tag @s add MhdpHit
execute as @e[tag=MhdpHit] run function asa_animator:zinogre/anim/tail_forward/events/damage_sub
tag @e remove MhdpHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.8

function asa_animator:zinogre/anim/tail_forward/events/particle_n
execute if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/tail_forward/events/particle_t