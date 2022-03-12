# 3 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=0..3] run function mh_dp:player/knockback/start_dwind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/bite_charge_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
particle explosion ~ ~ ~ 0.4 0.4 0.4 0 1
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 3