# 怒り状態終了
    tag @s remove IsAnger
    kill @e[type=marker,tag=NargaAngerEye]
    function asa_animator:narga/manager/model/change_to_normal
    scoreboard players operation #mhdp_narga_anger_damage AsaMatrix = #mhdp_narga_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:narga_health name [{"text": "迅竜"},{"text":"\uE000","font":"mhdp"}]