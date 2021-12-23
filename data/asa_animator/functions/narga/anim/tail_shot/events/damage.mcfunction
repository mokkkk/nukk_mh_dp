# 2 Damage
 data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=0..2.3] run function asa_animator:narga/anim/tail_shot/events/damage_sub
playsound item.trident.hit master @a ~ ~ ~ 1 0.7
particle block obsidian ~ ~ ~ 0 0 0 0 10
kill @s