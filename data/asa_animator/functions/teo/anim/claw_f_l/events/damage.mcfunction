# 7 Damage
# 共通
    data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
    data merge storage mhdp: {Epf:1}
# 炎纏いlv1-
    execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run data merge storage mhdp: {Epf:2}
    execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle lava ~ ~ ~ 0.1 0.1 0.1 0 3
# 粉塵纏いlv1-
    execute if entity @s[tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches 1.. run function asa_animator:teo/manager/bomb/set_bomb
# 共通
    execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3] run function asa_animator:teo/anim/claw_f_l/events/damage_sub
    particle sweep_attack ^1 ^ ^ 0 0 0 0 1
    particle sweep_attack ^ ^ ^ 0 0 0 0 1
    particle sweep_attack ^-1 ^ ^ 0 0 0 0 1
    playsound item.trident.throw master @a ~ ~ ~ 2 1.3