
tag @s remove IsAnger
scoreboard players set #mhdp_teo_anger_count AsaMatrix 0
scoreboard players operation #mhdp_teo_anger_damage AsaMatrix = #mhdp_teo_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:teo_health name [{"text": "炎王龍"},{"text":"\uE000","font":"mhdp"}]