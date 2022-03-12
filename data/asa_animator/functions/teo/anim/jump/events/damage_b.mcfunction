# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:3,Knockback:0b}
execute as @a[distance=..5.5] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..5.5] run function asa_animator:teo/anim/jump/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle lava ~ ~1 ~ 1 1 1 0 10
playsound entity.generic.explode master @a ~ ~ ~ 2 0.6