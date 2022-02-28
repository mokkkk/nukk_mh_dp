# 6 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:4,Knockback:0b}
execute as @a[distance=0..6] run function mh_dp:player/knockback/start_dwind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..6] run function asa_animator:ruko/anim/bjb_land/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle crimson_spore ~ ~1 ~ 1 1 1 0 100

kill @s