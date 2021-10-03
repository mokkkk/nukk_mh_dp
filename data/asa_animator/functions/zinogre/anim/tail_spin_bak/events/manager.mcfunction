# execute if score #asa_zinogre_kindex AsaMatrix matches 3 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_0 AsaMatrix run rotate_1
# execute if score #asa_zinogre_kindex AsaMatrix matches 4 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_1 AsaMatrix run rotate_2
# execute if score #asa_zinogre_kindex AsaMatrix matches 6 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_2 AsaMatrix run rotate_3

execute if score #asa_zinogre_kindex AsaMatrix matches 3..5 run tp @s ^ ^ ^0.4 ~24 ~
execute if score #asa_zinogre_kindex AsaMatrix matches 6 run tp @s ^ ^ ^0.4 ~36 ~
execute if score #asa_zinogre_kindex AsaMatrix matches 7..8 run tp @s ^0.1 ^ ^ ~2 ~

execute if score #asa_zinogre_kindex AsaMatrix matches 3..6 as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] at @s positioned ~ ~1.4 ~ run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 5