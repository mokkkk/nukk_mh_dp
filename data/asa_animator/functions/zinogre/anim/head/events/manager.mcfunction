# ホーミング
execute if score #asa_zinogre_kindex AsaMatrix matches ..2 run function asa_animator:zinogre/manager/rotate_fast
execute if score #asa_zinogre_kindex AsaMatrix matches 4 at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..4] run tp @s ^ ^ ^0.5 ~ ~

# 攻撃
# execute if score #asa_zinogre_kindex AsaMatrix matches 5 if score #asa_zinogre_tick_current AsaMatrix = #asa_zinogre_etick_1 AsaMatrix run attack