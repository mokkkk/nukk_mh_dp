execute if score #asa_zinogre_kindex AsaMatrix matches ..5 run function asa_animator:zinogre/manager/rotate

# execute if score #asa_zinogre_kindex AsaMatrix matches 6 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_0 AsaMatrix run rotate_end
# execute if score #asa_zinogre_kindex AsaMatrix matches 9 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_1 AsaMatrix run attack

execute if score #asa_zinogre_kindex AsaMatrix matches 6..8 as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] at @s positioned ~ ~1.4 ~ run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 5