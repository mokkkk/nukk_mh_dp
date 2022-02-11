# 7 Damage
# 共通
    data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
    data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
# 炎纏いlv1-
    execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run data modify storage mhdp: DamageType.Epf set value 2
    execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle lava ~ ~2 ~ 1 1 1 0 5
# 共通
    execute as @a[distance=..4.7] run function mh_dp:player/knockback/start_wind
    execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..4.7] run function asa_animator:teo/anim/jump/events/damage_sub
    data remove storage score_damage: Argument
    data remove storage mhdp: DamageType