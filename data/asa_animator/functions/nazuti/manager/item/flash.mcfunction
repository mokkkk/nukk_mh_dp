
# gametime比較
    execute store result score #mhdp_nazuti_flash_time_current AsaMatrix run data get storage mh_dp:status Time
    execute unless entity @s[tag=AnmSp0] unless entity @s[tag=AnmSp1] unless entity @s[tag=AnmSp2] unless entity @s[tag=AnmSp3] unless score #mhdp_nazuti_flash_time AsaMatrix > #mhdp_nazuti_flash_time_current AsaMatrix run function asa_animator:nazuti/manager/item/flash_
    scoreboard players reset #mhdp_nazuti_flash_time_current AsaMatrix