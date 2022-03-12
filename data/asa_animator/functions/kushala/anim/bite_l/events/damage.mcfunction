# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/bite_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2