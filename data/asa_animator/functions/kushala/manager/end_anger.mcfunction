
tag @s remove IsAnger
scoreboard players set #mhdp_kushala_anger_count AsaMatrix 0
scoreboard players operation #mhdp_kushala_anger_damage AsaMatrix = #mhdp_kushala_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:kushala_health name [{"text": "鋼龍"},{"text":"\uE000","font":"mhdp"}]