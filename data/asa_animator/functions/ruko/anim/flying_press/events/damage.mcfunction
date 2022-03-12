# 7 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=..7.5] run function mh_dp:player/knockback/start_dwind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=..7.5] run function asa_animator:ruko/anim/flying_press/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.wither.break_block master @a ~ ~ ~ 2 0.7
particle explosion ~ ~1 ~ 3 0 3 0 10