scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate_reset

# 確率で移動終了
    execute if predicate asa_animator:random/010 run function asa_animator:magara/anim/move_dash/events/change