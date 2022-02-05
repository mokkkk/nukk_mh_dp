scoreboard players set @s AsaMatrix 0
function asa_animator:teo/manager/remove_animation_tag
tag @s add IsAnger
execute if entity @s[tag=!IsFlying] run tag @s add AnmAnger
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyAnger
scoreboard players set #mhdp_teo_anger_count AsaMatrix 18
scoreboard players operation #mhdp_teo_anger_damage AsaMatrix = #mhdp_teo_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:teo_health name [{"text": "炎王龍"},{"text":"\uE001","font":"mhdp"}]