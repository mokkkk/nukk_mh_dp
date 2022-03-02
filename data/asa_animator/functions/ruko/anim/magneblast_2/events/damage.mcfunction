# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..8] run function asa_animator:ruko/anim/magneblast_2/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.7
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 3 0.5
playsound entity.wither.break_block master @a ~ ~ ~ 2 0.5
particle dust 0.314 0 0 3 ~ ~2 ~ 3 3 3 0 50
particle explosion_emitter ~ ~2 ~ 1 1 1 0 3