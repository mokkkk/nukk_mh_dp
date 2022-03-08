
# 怯みアニメーション再生
    scoreboard players set @s AsaMatrix 0
    execute if entity @s[tag=IsFlying] run scoreboard players set #mhdp_reus_actcount_phase AsaMatrix 0
    scoreboard players operation #mhdp_reus_flash_time AsaMatrix = #mhdp_reus_flash_time_current AsaMatrix
    scoreboard players add #mhdp_reus_flash_time AsaMatrix 1200
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
    function asa_animator:reus/manager/remove_animation_tag
    execute as @e[type=armor_stand,tag=ReusParts,tag=HeadU] at @s run particle crit ^ ^1.6 ^ 0.3 0.1 0.3 0.2 10
    execute if entity @s[tag=!IsFlying] run tag @s add AnmDHead
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
    tag @s remove IsFlying