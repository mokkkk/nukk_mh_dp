# 7 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:3,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..4.5] run function asa_animator:teo/anim/bomb_n/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion_emitter ~ ~2 ~ 0 0 0 0 1
particle lava ~ ~1 ~ 1 1 1 0 10
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7