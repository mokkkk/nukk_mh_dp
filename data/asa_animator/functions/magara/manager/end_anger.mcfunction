
# 怒り終了
    execute if entity @s[tag=IsAnger] run scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix = #mhdp_zinogre_anger_damage_max AsaMatrix
    tag @s remove IsAnger

# ボスバー設定
    bossbar set asa_animator:zinogre_health name [{"text": "雷狼竜"},{"text":"\uE000","font":"mhdp"}]