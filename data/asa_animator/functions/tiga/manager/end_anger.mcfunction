# 怒り終了
    tag @s remove IsAnger
    function asa_animator:tiga/manager/model/change_to_normal
    scoreboard players set #mhdp_tiga_anger_count AsaMatrix 0
    scoreboard players operation #mhdp_tiga_anger_damage AsaMatrix = #mhdp_tiga_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:tiga_health name [{"text": "轟竜"},{"text":"\uE000","font":"mhdp"}]