
# gametime比較
    execute store result score #mhdp_dyno_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless score #mhdp_dyno_flash_time AsaMatrix > #mhdp_dyno_flash_time_current AsaMatrix run function asa_animator:dyno/manager/item/flash_
    scoreboard players reset #mhdp_dyno_flash_time_current AsaMatrix