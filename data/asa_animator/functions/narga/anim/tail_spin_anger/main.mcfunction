# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/tail_spin_anger/start
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/tail_spin_anger/keyframes/0
execute if score @s AsaMatrix matches 1..6 run tp @s ^-0.1666667 ^0 ^-0.08333334
execute if score @s AsaMatrix matches 7 run function asa_animator:narga/anim/tail_spin_anger/keyframes/1
execute if score @s AsaMatrix matches 7..12 run tp @s ^-0.1666667 ^0 ^-0.1666667
execute if score @s AsaMatrix matches 13 run function asa_animator:narga/anim/tail_spin_anger/keyframes/2
execute if score @s AsaMatrix matches 13..20 run tp @s ^-0.01249999 ^0 ^-0.0125

execute if score @s AsaMatrix matches 21 run function asa_animator:narga/anim/tail_spin_anger/keyframes/3
execute if score @s AsaMatrix matches 21..25 run tp @s ^0.22 ^0.2 ^1 ~1 ~
execute if score @s AsaMatrix matches 26 run function asa_animator:narga/anim/tail_spin_anger/keyframes/4
execute if score @s AsaMatrix matches 26..32 run tp @s ^0.1857143 ^-0.07142857 ^-0.07142857 ~24 ~
execute if score @s AsaMatrix matches 33 run function asa_animator:narga/anim/tail_spin_anger/keyframes/5
execute if score @s AsaMatrix matches 33..39 run tp @s ^0.025 ^-0.03571429 ^-0.1607143 ~24 ~

execute if score @s AsaMatrix matches 40 run function asa_animator:narga/anim/tail_spin_anger/keyframes/6
execute if score @s AsaMatrix matches 40..45 run tp @s ^0.05416667 ^-0.04166667 ^-0.1458333 ~1 ~
execute if score @s AsaMatrix matches 46 run function asa_animator:narga/anim/tail_spin_anger/keyframes/7
execute if score @s AsaMatrix matches 46..55 run tp @s ^0.02 ^0 ^-0.01 ~-0.5 ~

execute if score @s AsaMatrix matches 56 run function asa_animator:narga/anim/tail_spin_anger/keyframes/8
execute if score @s AsaMatrix matches 56..60 run tp @s ^0 ^0.2 ^1 ~-1 ~
execute if score @s AsaMatrix matches 61 run function asa_animator:narga/anim/tail_spin_anger/keyframes/9
execute if score @s AsaMatrix matches 61..67 run tp @s ^-0.1857143 ^-0.07142857 ^-0.07142857 ~-24 ~
execute if score @s AsaMatrix matches 68 run function asa_animator:narga/anim/tail_spin_anger/keyframes/10
execute if score @s AsaMatrix matches 68..74 run tp @s ^0.04285714 ^-0.07142857 ^-0.3571429 ~-24 ~

execute if score @s AsaMatrix matches 75 run function asa_animator:narga/anim/tail_spin_anger/keyframes/11
execute if score @s AsaMatrix matches 75..95 run tp @s ^-0.1 ^0.002380952 ^-0.3 ~-1 ~
execute if score @s AsaMatrix matches 96 run function asa_animator:narga/anim/tail_spin_anger/keyframes/12
execute if score @s AsaMatrix matches 96..110 run tp @s ^0.03333334 ^-0.003333333 ^0.00666666 ~1 ~
execute if score @s AsaMatrix matches 111 run function asa_animator:narga/anim/tail_spin_anger/keyframes/13
execute if score @s AsaMatrix matches 111..130 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 131.. run function asa_animator:narga/anim/tail_spin_anger/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if score @s AsaMatrix matches 23..39 as @e[distance=0..15,type=armor_stand,tag=ArmR2] at @s positioned ~ ~1.4 ~ run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if score @s AsaMatrix matches 33..39 as @e[distance=0..15,type=armor_stand,tag=ArmL2] at @s positioned ~ ~1.4 ~ run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 23..39 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 30..45 run function asa_animator:narga/manager/ground

execute if score @s AsaMatrix matches 26..36 positioned ~ ~1 ~ run function asa_animator:narga/anim/tail_spin/events/particle
execute if score @s AsaMatrix matches 30..36 positioned ~ ~ ~ run function asa_animator:narga/anim/tail_spin/events/particle_2
execute if score @s AsaMatrix matches 30..36 positioned ~ ~-0.2 ~ run function asa_animator:narga/anim/tail_spin/events/particle_3
execute if score @s AsaMatrix matches 26 run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 1.2
execute if score @s AsaMatrix matches 32 run playsound item.trident.throw master @a ~ ~ ~ 3 1.2
execute if score @s AsaMatrix matches 32 run function asa_animator:narga/anim/tail_spin/events/damage

execute if score @s AsaMatrix matches 71..95 as @e[distance=0..15,type=armor_stand,tag=ArmR2] at @s positioned ~ ~1.4 ~ run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if score @s AsaMatrix matches 61..95 as @e[distance=0..15,type=armor_stand,tag=ArmL2] at @s positioned ~ ~1.4 ~ run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if score @s AsaMatrix matches 58..95 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 66.. run function asa_animator:narga/manager/ground

execute if score @s AsaMatrix matches 61..71 positioned ~ ~1 ~ run function asa_animator:narga/anim/tail_spin/events/particle
execute if score @s AsaMatrix matches 65..71 positioned ~ ~ ~ run function asa_animator:narga/anim/tail_spin/events/particle_2
execute if score @s AsaMatrix matches 65..71 positioned ~ ~-0.2 ~ run function asa_animator:narga/anim/tail_spin/events/particle_3
execute if score @s AsaMatrix matches 61 run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 1.2
execute if score @s AsaMatrix matches 67 run playsound item.trident.throw master @a ~ ~ ~ 3 1.2
execute if score @s AsaMatrix matches 67 run function asa_animator:narga/anim/tail_spin/events/damage