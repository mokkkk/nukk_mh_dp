# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[distance=0..3.5,type=!armor_stand,type=!marker,tag=!ReiaParts] run function asa_animator:reia/anim/bite_l/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2
execute as @e[type=armor_stand,distance=0..12,tag=ReiaParts,tag=HeadU] at @s positioned ^ ^1.1 ^0.5 run particle lava ~ ~ ~ 0.2 0.2 0.2 1 5