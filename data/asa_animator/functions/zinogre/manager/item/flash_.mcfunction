
# 怯みアニメーション再生
    scoreboard players set @s AsaMatrix 0
    execute if entity @s[tag=IsFlying] run scoreboard players set #mhdp_zinogre_actcount_phase AsaMatrix 0
    scoreboard players operation #mhdp_zinogre_flash_time AsaMatrix = #mhdp_zinogre_flash_time_current AsaMatrix
    scoreboard players add #mhdp_zinogre_flash_time AsaMatrix 1200
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
    function asa_animator:zinogre/manager/remove_animation_tag
    execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU] at @s run particle crit ^ ^1.6 ^ 0.3 0.1 0.3 0.2 10
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
    # 左右に応じてアニメーション再生
    execute unless entity @s[tag=IsFlying] run function asa_animator:zinogre/manager/item/start_flash_animation
    tag @s remove IsFlying