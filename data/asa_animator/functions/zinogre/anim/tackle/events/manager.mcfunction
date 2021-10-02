# ターゲット
execute if score #asa_zinogre_kindex AsaMatrix matches 0..2 run function asa_animator:zinogre/manager/rotate

# execute if score #asa_zinogre_kindex AsaMatrix matches 4 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_1 AsaMatrix run attack
# execute if score #asa_zinogre_kindex AsaMatrix matches 5 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_2 AsaMatrix run attack
