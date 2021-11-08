# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/blade/start
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/blade/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^0.8 ^-0.2
execute if score @s AsaMatrix matches 6 run function asa_animator:narga/anim/blade/keyframes/1
execute if score @s AsaMatrix matches 6..11 run tp @s ^0.05555555 ^-0.6866667 ^-0.1666667
execute if score @s AsaMatrix matches 12 run function asa_animator:narga/anim/blade/keyframes/2
execute if score @s AsaMatrix matches 12..28 run tp @s ^0.009803923 ^-0.003529412 ^-0.02352942
execute if score @s AsaMatrix matches 29 run function asa_animator:narga/anim/blade/keyframes/3
execute if score @s AsaMatrix matches 29..33 run tp @s ^-0.1 ^0.636 ^0.48 ~1 ~
execute if score @s AsaMatrix matches 34 run function asa_animator:narga/anim/blade/keyframes/4
execute if score @s AsaMatrix matches 34..41 run tp @s ^0.03125 ^-0.3625 ^0.0625 ~1 ~
execute if score @s AsaMatrix matches 42 run function asa_animator:narga/anim/blade/keyframes/5
execute if score @s AsaMatrix matches 42..50 run tp @s ^0.01785714 ^-0.007142857 ^0.03571429 ~-1 ~
execute if score @s AsaMatrix matches 51 run function asa_animator:narga/anim/blade/keyframes/6
execute if score @s AsaMatrix matches 51..65 run tp @s ^-0.025 ^0 ^-0.1 ~-1 ~
execute if score @s AsaMatrix matches 66 run function asa_animator:narga/anim/blade/keyframes/7
execute if score @s AsaMatrix matches 66..75 run tp @s ^-0.025 ^0 ^-0.1 ~0.2 ~
execute if score @s AsaMatrix matches 76.. run function asa_animator:narga/anim/blade/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if score @s AsaMatrix matches 1..24 run function asa_animator:narga/manager/rotate
execute if score @s AsaMatrix matches 25 run function asa_animator:narga/anim/blade/events/pos/set_pos
execute if score @s AsaMatrix matches 29..38 run function asa_animator:narga/anim/blade/events/pos/offset

execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 1 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10

execute if score @s AsaMatrix matches 28 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 28 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10

execute if score @s AsaMatrix matches 39 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 39 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10
execute if score @s AsaMatrix matches 41 run playsound item.trident.throw master @a ~ ~ ~ 2 1.1
execute if score @s AsaMatrix matches 41 rotated ~10 ~ positioned ^ ^1.2 ^1 run function asa_animator:narga/anim/blade/events/particle