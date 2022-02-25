
# 左右確認
execute facing entity @e[tag=NazutiAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] if score #mhdp_nazuti_lv AsaMatrix matches ..1 run tag @s add AnmHeadL
execute if entity @s[tag=!Right] if score #mhdp_nazuti_lv AsaMatrix matches ..1 run tag @s add AnmHeadR
execute if entity @s[tag=Right] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run tag @s add AnmHead2L
execute if entity @s[tag=!Right] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run tag @s add AnmHead2R

tag @s remove Right