scoreboard players set @s AsaMatrix 0
function asa_animator:brachy/manager/remove_animation_tag
tag @s add AnmAnger
scoreboard players set #mhdp_brachy_anger_count AsaMatrix 0
scoreboard players operation #mhdp_brachy_anger_damage AsaMatrix = #mhdp_brachy_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:brachy_health name [{"text": "砕竜"},{"text":"\uE001","font":"mhdp"}]