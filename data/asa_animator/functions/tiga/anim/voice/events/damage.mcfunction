# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..7] run function asa_animator:tiga/anim/voice/events/damage_sub
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..12] unless entity @s[scores={MhdpTAvoid=1..}] run function asa_animator:tiga/anim/voice/events/damage_sub_