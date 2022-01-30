# 7 Damage
# 共通
    data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
    data merge storage mhdp: {Epf:1}
# 炎纏いlv1-
    execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run data merge storage mhdp: {Epf:2}
    execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle lava ~ ~2 ~ 1 1 1 0 5
# 共通
    execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..5.5] run function asa_animator:teo/anim/jump/events/damage_sub