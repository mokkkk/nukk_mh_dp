
# gametime比較
    execute store result score #mhdp_kushala_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless entity @s[tag=AnmSp] unless score #mhdp_kushala_flash_time AsaMatrix > #mhdp_kushala_flash_time_current AsaMatrix run function asa_animator:kushala/manager/item/flash_
    scoreboard players reset #mhdp_kushala_flash_time_current AsaMatrix