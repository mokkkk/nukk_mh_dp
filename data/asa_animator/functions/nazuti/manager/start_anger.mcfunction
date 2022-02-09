scoreboard players set @s AsaMatrix 0
function asa_animator:kushala/manager/remove_animation_tag
tag @s add IsAnger
execute if entity @s[tag=!IsFlying] run tag @s add AnmAnger
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyAnger
scoreboard players set #mhdp_kushala_anger_count AsaMatrix 12
scoreboard players operation #mhdp_kushala_anger_damage AsaMatrix = #mhdp_kushala_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:kushala_health name [{"text": "鋼龍"},{"text":"\uE001","font":"mhdp"}]