# 8 Damage
data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..5.5] run function asa_animator:kushala/anim/breath_charge/events/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle explosion_emitter ~ ~4 ~ 0 0 0 0 1
particle explosion_emitter ~ ~7 ~ 0 0 0 0 1
particle explosion_emitter ~ ~10 ~ 0 0 0 0 1
particle cloud ~ ~1 ~ 0 0 0 0.2 50
kill @s