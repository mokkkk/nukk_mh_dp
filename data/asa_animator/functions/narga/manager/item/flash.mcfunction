
# gametime比較
    execute store result score #mhdp_narga_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless score #mhdp_narga_flash_time AsaMatrix > #mhdp_narga_flash_time_current AsaMatrix run function asa_animator:narga/manager/item/flash_
    scoreboard players reset #mhdp_narga_flash_time_current AsaMatrix