
# gametime比較
    execute store result score #mhdp_tiga_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless score #mhdp_tiga_flash_time AsaMatrix > #mhdp_tiga_flash_time_current AsaMatrix run function asa_animator:tiga/manager/item/flash_
    scoreboard players reset #mhdp_tiga_flash_time_current AsaMatrix