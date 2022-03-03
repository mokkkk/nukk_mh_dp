scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=!IsFlying] run tag @s add IsAnger
execute if entity @s[tag=IsAnger] run function asa_animator:ruko/manager/remove_animation_tag
execute if entity @s[tag=IsAnger] run tag @s add AnmAnger
execute if entity @s[tag=IsAnger] run scoreboard players set #mhdp_ruko_anger_count AsaMatrix 18
execute if entity @s[tag=IsAnger] run scoreboard players operation #mhdp_ruko_anger_damage AsaMatrix = #mhdp_ruko_anger_damage_max AsaMatrix
# ボスバー設定
    execute if entity @s[tag=IsAnger] run bossbar set asa_animator:ruko_health name [{"text": "極龍"},{"text":"\uE001","font":"mhdp"}]