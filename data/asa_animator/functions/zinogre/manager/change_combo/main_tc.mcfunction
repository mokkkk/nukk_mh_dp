
# 左右確認
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 0 facing entity @e[tag=ZinogreAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add ComboRight
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 0 run function asa_animator:zinogre/manager/change_normal/_/hand
execute if entity @s[tag=ComboRight] if score #mhdp_zinogre_combo_count AsaMatrix matches 1.. run tag @s add AnmHandR2Charge
execute if entity @s[tag=!ComboRight] if score #mhdp_zinogre_combo_count AsaMatrix matches 1.. run tag @s add AnmHandL2Charge
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 1.. run tag @s remove ComboRight
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 1.. run tag @s remove ComboTC