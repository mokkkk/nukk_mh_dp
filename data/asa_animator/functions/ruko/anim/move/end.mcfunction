scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
# 一定確立で移動キャンセル
execute if predicate asa_animator:random/010 run function asa_animator:ruko/anim/move/events/change