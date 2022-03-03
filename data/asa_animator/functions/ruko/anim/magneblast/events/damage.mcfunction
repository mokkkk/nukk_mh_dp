# 5 Damage
data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..7] run tag @s add MhdpDHit
execute if entity @e[tag=MhdpDHit] as @e[tag=MhdpDHit] run function asa_animator:ruko/anim/magneblast/events/damage_sub
execute if entity @e[tag=MhdpDHit] run function asa_animator:ruko/anim/magneblast/events/change
tag @e[tag=MhdpDHit] remove MhdpDHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
particle explosion_emitter ~ ~2 ~ 2 0 2 0 5

kill @e[type=marker,tag=RukoAttackPos]