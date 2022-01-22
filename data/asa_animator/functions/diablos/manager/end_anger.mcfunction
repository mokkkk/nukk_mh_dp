
# 怒り終了
    tag @s remove IsAnger
    scoreboard players operation #mhdp_diablos_anger_damage AsaMatrix = #mhdp_diablos_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:diablos_health name [{"text": "角竜"},{"text":"\uE000","font":"mhdp"}]