 # アニメーション開始
    scoreboard players set @s AsaMatrix 0
    function asa_animator:narga/manager/remove_animation_tag
    tag @s add AnmAngerMove
    scoreboard players set #mhdp_narga_anger_count AsaMatrix 0
    scoreboard players operation #mhdp_narga_anger_damage AsaMatrix = #mhdp_narga_anger_damage_max AsaMatrix
# 怒り状態開始
    tag @s add IsAnger
    execute unless entity @s[tag=DestroyHead] run summon marker ~ ~ ~ {Tags:["NargaAngerEye","L"]}
    summon marker ~ ~ ~ {Tags:["NargaAngerEye","R"]}
    function asa_animator:narga/manager/model/change_to_anger

# ボスバー設定
    bossbar set asa_animator:narga_health name [{"text": "迅竜"},{"text":"\uE001","font":"mhdp"}]