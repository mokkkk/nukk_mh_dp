
# 怒り終了
    tag @s remove IsAnger
    scoreboard players operation #mhdp_brachy_anger_damage AsaMatrix = #mhdp_brachy_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:brachy_health name [{"text": "砕竜"},{"text":"\uE000","font":"mhdp"}]