
# 怯みアニメーション再生
    scoreboard players set @s AsaMatrix 0
    execute if entity @s[tag=IsFlying] run scoreboard players set #mhdp_teo_actcount_phase AsaMatrix 0
    scoreboard players operation #mhdp_teo_flash_time AsaMatrix = #mhdp_teo_flash_time_current AsaMatrix
    scoreboard players add #mhdp_teo_flash_time AsaMatrix 1200
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
    function asa_animator:teo/manager/remove_animation_tag
    execute as @e[type=armor_stand,tag=TeoParts,tag=HeadU] at @s run particle crit ^ ^1.6 ^ 0.3 0.1 0.3 0.2 10
    execute if entity @s[tag=!IsFlying] run tag @s add AnmDBody
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
    tag @s remove IsFlying