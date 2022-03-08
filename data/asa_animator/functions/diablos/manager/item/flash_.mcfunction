
# 怯みアニメーション再生
    scoreboard players set @s AsaMatrix 0
    execute if entity @s[tag=IsFlying] run scoreboard players set #mhdp_diablos_actcount_phase AsaMatrix 0
    scoreboard players operation #mhdp_diablos_flash_time AsaMatrix = #mhdp_diablos_flash_time_current AsaMatrix
    scoreboard players add #mhdp_diablos_flash_time AsaMatrix 1200
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
    function asa_animator:diablos/manager/remove_animation_tag
    execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s run particle crit ^ ^1.6 ^ 0.3 0.1 0.3 0.2 10
    tag @s add AnmDHead
    tag @s remove IsFlying