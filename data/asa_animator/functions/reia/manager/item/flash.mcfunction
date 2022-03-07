
# gametime比較
    execute store result score #mhdp_reia_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless score #mhdp_reia_flash_time AsaMatrix > #mhdp_reia_flash_time_current AsaMatrix run function asa_animator:reia/manager/item/flash_
    scoreboard players reset #mhdp_reia_flash_time_current AsaMatrix