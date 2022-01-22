scoreboard players set @s AsaMatrix 0
function asa_animator:diablos/manager/remove_animation_tag
tag @s add AnmAnger
scoreboard players set #mhdp_diablos_anger_count AsaMatrix 0
scoreboard players operation #mhdp_diablos_anger_damage AsaMatrix = #mhdp_diablos_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:diablos_health name [{"text": "角竜"},{"text":"\uE001","font":"mhdp"}]