
tag @s remove IsAnger
scoreboard players set #mhdp_ruko_anger_count AsaMatrix 0
scoreboard players operation #mhdp_ruko_anger_damage AsaMatrix = #mhdp_ruko_anger_damage_max AsaMatrix
function asa_animator:ruko/manager/model/change_to_normal
# ボスバー設定
    bossbar set asa_animator:ruko_health name [{"text": "極龍"},{"text":"\uE000","font":"mhdp"}]