scoreboard players set @s AsaMatrix 0
function asa_animator:dyno/manager/remove_animation_tag
tag @s add IsAnger
tag @s add AnmAnger
scoreboard players set #mhdp_dyno_anger_count AsaMatrix 0
scoreboard players operation #mhdp_dyno_anger_damage AsaMatrix = #mhdp_dyno_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:dyno_health name [{"text": "斬竜"},{"text":"\uE001","font":"mhdp"}]