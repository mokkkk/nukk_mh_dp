# 7 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:4}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=..5] run function asa_animator:kushala/anim/claw_dragon/events/damage_sub
particle explosion ~ ~ ~ 2 0 2 0 10
playsound entity.wither.break_block master @a ~ ~ ~ 2 0.5
particle dust 0.314 0 0 3 ~ ~2 ~ 0.4 2 0.4 0 50
particle dust 0.592 0.243 0.243 1 ~ ~2 ~ 0.2 2 0.2 0 50
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIYBMAbCgGYCcALAwLQAcltt7LnAEal2TAAwoArO2oBGFNUENJdMdQDsYAgDtKAWwTJAYYoACWVrAxKGfQGck4FAHtC2iEhZiCKOG7gYHMAA3SmxCQ3AADyQvMCgYgF8EghtSNEJ7REkCWwhrd0RYuGxsNBhbQ1kxWIwnPIhDWLRbAFESsoqWgEdCUOwoAGUrH3JEBlCKpIBdIA_3
# 円 1
particle dust 0.314 0 0 4 ^0 ^ ^-5 0 0 0 0 1
particle dust 0.314 0 0 4 ^0.78217 ^ ^-4.93844 0 0 0 0 1
particle dust 0.314 0 0 4 ^1.54508 ^ ^-4.75528 0 0 0 0 1
particle dust 0.314 0 0 4 ^2.26995 ^ ^-4.45503 0 0 0 0 1
particle dust 0.314 0 0 4 ^2.93893 ^ ^-4.04508 0 0 0 0 1
particle dust 0.314 0 0 4 ^3.53553 ^ ^-3.53553 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.04508 ^ ^-2.93893 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.45503 ^ ^-2.26995 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.75528 ^ ^-1.54508 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.93844 ^ ^-0.78217 0 0 0 0 1
particle dust 0.314 0 0 4 ^5 ^ ^0 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.93844 ^ ^0.78217 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.75528 ^ ^1.54508 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.45503 ^ ^2.26995 0 0 0 0 1
particle dust 0.314 0 0 4 ^4.04508 ^ ^2.93893 0 0 0 0 1
particle dust 0.314 0 0 4 ^3.53553 ^ ^3.53553 0 0 0 0 1
particle dust 0.314 0 0 4 ^2.93893 ^ ^4.04508 0 0 0 0 1
particle dust 0.314 0 0 4 ^2.26995 ^ ^4.45503 0 0 0 0 1
particle dust 0.314 0 0 4 ^1.54508 ^ ^4.75528 0 0 0 0 1
particle dust 0.314 0 0 4 ^0.78217 ^ ^4.93844 0 0 0 0 1
particle dust 0.314 0 0 4 ^0 ^ ^5 0 0 0 0 1
particle dust 0.314 0 0 4 ^-0.78217 ^ ^4.93844 0 0 0 0 1
particle dust 0.314 0 0 4 ^-1.54508 ^ ^4.75528 0 0 0 0 1
particle dust 0.314 0 0 4 ^-2.26995 ^ ^4.45503 0 0 0 0 1
particle dust 0.314 0 0 4 ^-2.93893 ^ ^4.04508 0 0 0 0 1
particle dust 0.314 0 0 4 ^-3.53553 ^ ^3.53553 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.04508 ^ ^2.93893 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.45503 ^ ^2.26995 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.75528 ^ ^1.54508 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.93844 ^ ^0.78217 0 0 0 0 1
particle dust 0.314 0 0 4 ^-5 ^ ^0 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.93844 ^ ^-0.78217 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.75528 ^ ^-1.54508 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.45503 ^ ^-2.26995 0 0 0 0 1
particle dust 0.314 0 0 4 ^-4.04508 ^ ^-2.93893 0 0 0 0 1
particle dust 0.314 0 0 4 ^-3.53553 ^ ^-3.53553 0 0 0 0 1
particle dust 0.314 0 0 4 ^-2.93893 ^ ^-4.04508 0 0 0 0 1
particle dust 0.314 0 0 4 ^-2.26995 ^ ^-4.45503 0 0 0 0 1
particle dust 0.314 0 0 4 ^-1.54508 ^ ^-4.75528 0 0 0 0 1
particle dust 0.314 0 0 4 ^-0.78217 ^ ^-4.93844 0 0 0 0 1