# 7 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run data merge storage mhdp: {Epf:2}
execute if entity @s[tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches 2.. run data merge storage mhdp: {Epf:3}
execute unless entity @s[tag=IsBomb] as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3.5] run function asa_animator:teo/anim/bite_turn_l/events/damage_sub
execute if entity @s[tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches ..0 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3.5] run function asa_animator:teo/anim/bite_turn_l/events/damage_sub
execute if entity @s[tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches 1.. as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..4] run function asa_animator:teo/anim/bite_turn_l/events/damage_sub

execute if score #mhdp_teo_lv AsaMatrix matches ..0 run playsound entity.wither.break_block master @a ~ ~ ~ 2 1.3
execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run playsound item.firecharge.use master @a ~ ~ ~ 2 0.7
execute if entity @s[tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches 1.. run playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
execute if entity @s[tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle explosion ^ ^1 ^1 1 1 1 0 5