# 4.5 Damage
 data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=..4] run function asa_animator:narga/anim/bite_2/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 1.4