
# 計算
    scoreboard players operation #mhdp_temp AsaMatrix = @s AsaMatrix
    scoreboard players set #mhdp_const_temp AsaMatrix 2
    scoreboard players operation #mhdp_temp AsaMatrix %= #mhdp_const_temp AsaMatrix

# 実行
    execute if score #mhdp_temp AsaMatrix matches 0 as @e[type=armor_stand,tag=MagaraParts,distance=..20] at @s run function asa_animator:magara/anim/stay/events/shiver_0
    execute if score #mhdp_temp AsaMatrix matches 1 as @e[type=armor_stand,tag=MagaraParts,distance=..20] at @s run function asa_animator:magara/anim/stay/events/shiver_1

# 終了
    scoreboard players reset #mhdp_temp
    scoreboard players reset #mhdp_const_temp