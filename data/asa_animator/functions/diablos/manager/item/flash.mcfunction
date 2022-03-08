
# gametime比較
    execute store result score #mhdp_diablos_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless entity @s[tag=AnmDive] unless entity @s[tag=AnmDiveJump] unless score #mhdp_diablos_flash_time AsaMatrix > #mhdp_diablos_flash_time_current AsaMatrix run function asa_animator:diablos/manager/item/flash_
    scoreboard players reset #mhdp_diablos_flash_time_current AsaMatrix