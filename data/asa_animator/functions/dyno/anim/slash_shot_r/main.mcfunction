# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/slash_shot_r/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/slash_shot_r/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^0.0375 ^-0.0625
execute if score @s AsaMatrix matches 9 run function asa_animator:dyno/anim/slash_shot_r/keyframes/1
execute if score @s AsaMatrix matches 9..14 run tp @s ^0 ^-0.008333336 ^-0.08333334
execute if score @s AsaMatrix matches 15 run function asa_animator:dyno/anim/slash_shot_r/keyframes/2
execute if score @s AsaMatrix matches 15..24 run tp @s ^0 ^0 ^-0.02000001
execute if score @s AsaMatrix matches 25 run function asa_animator:dyno/anim/slash_shot_r/keyframes/3
execute if score @s AsaMatrix matches 25..34 run tp @s ^-0.1 ^-0.03 ^0.1 ~-28 ~
execute if score @s AsaMatrix matches 35 run function asa_animator:dyno/anim/slash_shot_r/keyframes/4
execute if score @s AsaMatrix matches 35..37 run tp @s ^0 ^0 ^0 ~-1 ~
execute if score @s AsaMatrix matches 38 run function asa_animator:dyno/anim/slash_shot_r/keyframes/5
execute if score @s AsaMatrix matches 38..43 run tp @s ^0.08333334 ^-0.01666667 ^0.25 ~-8 ~
execute if score @s AsaMatrix matches 44 run function asa_animator:dyno/anim/slash_shot_r/keyframes/6
execute if score @s AsaMatrix matches 44..52 run tp @s ^0 ^0 ^0.01111111 ~-0.1 ~
execute if score @s AsaMatrix matches 53 run function asa_animator:dyno/anim/slash_shot_r/keyframes/7
execute if score @s AsaMatrix matches 53..57 run tp @s ^0 ^0 ^0 ~-4 ~
execute if score @s AsaMatrix matches 58 run function asa_animator:dyno/anim/slash_shot_r/keyframes/8
execute if score @s AsaMatrix matches 58..70 run tp @s ^0.03846154 ^0.01153846 ^-0.1076923 ~-0.5 ~
execute if score @s AsaMatrix matches 71.. run function asa_animator:dyno/anim/slash_shot_r/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if score @s AsaMatrix matches 1..20 run function asa_animator:dyno/manager/rotate

execute if score @s AsaMatrix matches 14 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 14 run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 14 run playsound entity.iron_golem.attack master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 14 positioned ^ ^ ^-6 run function asa_animator:dyno/anim/slash_swing_l/events/damage

execute if score @s AsaMatrix matches 25..34 run playsound block.grass.hit master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 27..36 as @e[distance=0..20,type=armor_stand,tag=DynoParts,tag=Tail3] at @s run function asa_animator:dyno/anim/slash_shot_l/events/particle_tail

execute if score @s AsaMatrix matches 38 run playsound item.trident.throw master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 36 run playsound item.firecharge.use master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 20 run summon marker ^ ^ ^30 {Tags:["DynoMoveRotate"]}
execute if score @s AsaMatrix matches 38 positioned ^2 ^ ^6 facing entity @e[distance=0..30,type=marker,tag=DynoMoveRotate] feet rotated ~ 0 run function asa_animator:dyno/anim/slash_shot_l/events/damage