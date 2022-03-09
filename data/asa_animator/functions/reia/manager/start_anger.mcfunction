scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=AnmSault] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyStay] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyCharge] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyTackle] run tag @s add IsFlying
execute if entity @s[tag=AnmBjbLand] run tag @s add IsFlying
function asa_animator:reia/manager/remove_animation_tag
tag @s add IsAnger
execute unless entity @s[tag=IsFlying] run tag @s add AnmAnger
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyAnger
scoreboard players set #mhdp_reia_anger_count AsaMatrix 0
scoreboard players operation #mhdp_reia_anger_damage AsaMatrix = #mhdp_reia_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:reia_health name [{"text": "雌火竜"},{"text":"\uE001","font":"mhdp"}]

# 怒り共有
    execute if entity @e[type=armor_stand,tag=ReusRoot,tag=!IsAnger] as @e[type=armor_stand,tag=ReusRoot,tag=!IsAnger] run function asa_animator:reus/manager/start_anger