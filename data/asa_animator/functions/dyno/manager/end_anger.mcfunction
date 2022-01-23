
# 怒り終了
    tag @s remove IsAnger
    scoreboard players operation #mhdp_dyno_anger_damage AsaMatrix = #mhdp_dyno_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:dyno_health name [{"text": "斬竜"},{"text":"\uE000","font":"mhdp"}]