
# gametime比較
    execute store result score #mhdp_brachyr_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless entity @s[tag=AnmRage] unless score #mhdp_brachyr_flash_time AsaMatrix > #mhdp_brachyr_flash_time_current AsaMatrix run function asa_animator:brachyr/manager/item/flash_
    scoreboard players reset #mhdp_brachyr_flash_time_current AsaMatrix