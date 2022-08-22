scoreboard players set @s AsaMatrix 0
function asa_animator:zinogre/manager/remove_animation_tag
function asa_animator:zinogre/manager/end_anger
function asa_animator:zinogre/manager/model/change_to_normal
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
scoreboard players operation #mhdp_zinogre_charge_damage AsaMatrix = #mhdp_zinogre_charge_damage_max AsaMatrix

# 左右に応じてアニメーション再生
execute unless entity @s[tag=IsFlying] run function asa_animator:zinogre/manager/start_damage_animation_