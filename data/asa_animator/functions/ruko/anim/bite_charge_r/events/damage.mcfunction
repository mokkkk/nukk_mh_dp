# 3 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:4,Knockback:1b}
execute rotated ~ ~ positioned ^ ^2 ^7 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..4] run function asa_animator:ruko/anim/bite_charge_l/events/damage_sub
execute rotated ~3 ~ positioned ^ ^2 ^7 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..4] run function asa_animator:ruko/anim/bite_charge_l/events/damage_sub
execute rotated ~6 ~ positioned ^ ^2 ^7 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..4] run function asa_animator:ruko/anim/bite_charge_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType


execute rotated ~ ~ positioned ^ ^2 ^7 run particle dust 0.522 0.051 0.051 7 ~ ~ ~ 0.7 0.7 0.7 0 3
execute rotated ~3 ~ positioned ^ ^2 ^7 run particle dust 0.522 0.051 0.051 7 ~ ~ ~ 0.7 0.7 0.7 0 3
execute rotated ~6 ~ positioned ^ ^2 ^7 run particle dust 0.522 0.051 0.051 7 ~ ~ ~ 0.7 0.7 0.7 0 3