# 3 Damage
 data modify storage score_damage: Argument set value {Damage:0.5f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=..22] run function asa_animator:diablos/anim/anger/events/damage_sub
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=..22] unless entity @s[scores={MhdpTAvoid=1..}] run function asa_animator:diablos/anim/anger/events/damage_sub_