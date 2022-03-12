# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..4] run function asa_animator:kushala/anim/breath/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.2 20
kill @s