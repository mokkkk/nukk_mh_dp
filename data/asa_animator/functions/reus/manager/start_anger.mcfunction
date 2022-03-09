scoreboard players set @s AsaMatrix 0
function asa_animator:reus/manager/remove_animation_tag
tag @s add IsAnger
execute unless entity @s[tag=IsFlying] run tag @s add AnmAnger
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyAnger
scoreboard players set #mhdp_reus_anger_count AsaMatrix 0
scoreboard players operation #mhdp_reus_anger_damage AsaMatrix = #mhdp_reus_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:reus_health name [{"text": "火竜"},{"text":"\uE001","font":"mhdp"}]

# 怒り共有
    execute if entity @e[type=armor_stand,tag=ReiaRoot,tag=!IsAnger] as @e[type=armor_stand,tag=ReiaRoot,tag=!IsAnger] run function asa_animator:reia/manager/start_anger