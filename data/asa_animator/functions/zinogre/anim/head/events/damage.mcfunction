# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^1 ^5 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..2.5] run function asa_animator:zinogre/anim/head/events/damage_sub
playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.8