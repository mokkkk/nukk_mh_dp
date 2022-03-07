
# gametime比較
    execute store result score #mhdp_teo_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless entity @s[tag=AnmSupernova] unless entity @s[tag=AnmSupernovaEnd] unless score #mhdp_teo_flash_time AsaMatrix > #mhdp_teo_flash_time_current AsaMatrix run function asa_animator:teo/manager/item/flash_
    scoreboard players reset #mhdp_teo_flash_time_current AsaMatrix