scoreboard players set @s AsaMatrix 0
tag @s add IsAnger
function asa_animator:zinogre/manager/remove_animation_tag
function asa_animator:zinogre/manager/change_combo/start_te
execute if entity @s[tag=IsAnger] run scoreboard players set #mhdp_zinogre_anger_count AsaMatrix 30
execute if entity @s[tag=IsAnger] run scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix = #mhdp_zinogre_anger_damage_max AsaMatrix
# ボスバー設定
    execute if entity @s[tag=IsAnger] run bossbar set asa_animator:zinogre_health name [{"text": "雷狼竜"},{"text":"\uE001","font":"mhdp"}]