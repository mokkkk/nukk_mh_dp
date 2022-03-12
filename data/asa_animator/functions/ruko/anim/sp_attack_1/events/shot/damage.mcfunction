# 6 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:4,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..4] run function asa_animator:ruko/anim/bjb_land/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1

kill @s