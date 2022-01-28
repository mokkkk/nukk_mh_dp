# アニメーション開始
    scoreboard players set @s AsaMatrix 0
    function asa_animator:tiga/manager/remove_animation_tag
    tag @s add AnmBStepA
    scoreboard players set #mhdp_tiga_anger_count AsaMatrix 0

# 怒り開始
    tag @s add IsAnger
    function asa_animator:tiga/manager/model/change_to_anger
    scoreboard players set #mhdp_tiga_anger_count AsaMatrix 0
    scoreboard players set #mhdp_tiga_actcount AsaMatrix 12
    scoreboard players operation #mhdp_tiga_anger_damage AsaMatrix = #mhdp_tiga_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:narga_health name [{"text": "轟竜"},{"text":"\uE001","font":"mhdp"}]