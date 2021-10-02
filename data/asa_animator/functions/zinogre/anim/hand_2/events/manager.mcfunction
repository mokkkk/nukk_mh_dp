
# 1回目ホーミング
execute if score #asa_zinogre_kindex AsaMatrix matches 1..2 run function asa_animator:zinogre/manager/rotate_fast
execute if score #asa_zinogre_kindex AsaMatrix matches 1..2 at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..4] run tp @s ^ ^ ^0.8 ~ ~

# execute if score #asa_zinogre_kindex AsaMatrix matches 4 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_2 AsaMatrix run attack

# 1回目ホーミング
execute if score #asa_zinogre_kindex AsaMatrix matches 6..7 run function asa_animator:zinogre/manager/rotate_fast
execute if score #asa_zinogre_kindex AsaMatrix matches 6..7 at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..4] run tp @s ^ ^ ^0.8 ~ ~

# execute if score #asa_zinogre_kindex AsaMatrix matches 9 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_5 AsaMatrix run attack
