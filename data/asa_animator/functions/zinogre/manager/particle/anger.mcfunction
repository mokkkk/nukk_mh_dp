# 背中
    execute if predicate asa_animator:random/050 run particle end_rod ^ ^5 ^1.8 3 3 3 0 1
    particle dust 1 1 1000000000 2 ^ ^5 ^1.8 0.8 0.6 0.8 0 5
    particle dust 1000000000 1000000000 1000000000 2 ^ ^5 ^1.8 0.8 0.6 0.8 0 5
    particle dust 1 1 1000000000 1 ^ ^4 ^1.8 1.2 1.2 1.2 0 10

# 残光
    execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
    execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU,limit=1] run function #asa_matrix:matrix
    scoreboard players set #asa_child_pos_x AsaMatrix 300
    scoreboard players set #asa_child_pos_y AsaMatrix 1550
    scoreboard players set #asa_child_pos_z AsaMatrix -280
    function #asa_matrix:rotate
    execute as @e[type=marker,tag=ZinogreAngerEye,tag=L,limit=1] run function #asa_matrix:set_child_pos
    scoreboard players set #asa_child_pos_x AsaMatrix -300
    scoreboard players set #asa_child_pos_y AsaMatrix 1550
    scoreboard players set #asa_child_pos_z AsaMatrix -280
    function #asa_matrix:rotate
    execute as @e[type=marker,tag=ZinogreAngerEye,tag=R,limit=1] run function #asa_matrix:set_child_pos

    execute as @e[type=marker,tag=ZinogreAngerEye] at @s run particle dust 1 1 1000000000 1 ~ ~ ~ 0 0 0 0 1 force

    # summon minecraft:marker ~ ~ ~ {Tags:["ZinogreAngerEye","L"]}