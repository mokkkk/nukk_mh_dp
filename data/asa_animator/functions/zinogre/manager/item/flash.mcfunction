
# gametime比較
    execute store result score #mhdp_zinogre_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless score #mhdp_zinogre_flash_time AsaMatrix > #mhdp_zinogre_flash_time_current AsaMatrix run function asa_animator:zinogre/manager/item/flash_
    scoreboard players reset #mhdp_zinogre_flash_time_current AsaMatrix