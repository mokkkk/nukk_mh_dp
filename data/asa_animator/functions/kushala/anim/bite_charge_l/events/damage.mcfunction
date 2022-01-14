# 3 Damage
 data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/bite_charge_l/events/damage_sub
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
particle explosion ~ ~ ~ 0.4 0.4 0.4 0 1
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 3