# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..4] run function asa_animator:kushala/anim/sp_attack/events/bomb/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle cloud ~ ~1 ~ 0 0 0 0.1 20
kill @s