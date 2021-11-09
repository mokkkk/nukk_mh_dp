# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/bite_2/start
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/bite_2/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^0.0125 ^-0.075
execute if score @s AsaMatrix matches 5 run function asa_animator:narga/anim/bite_2/keyframes/1
execute if score @s AsaMatrix matches 5..13 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 14 run function asa_animator:narga/anim/bite_2/keyframes/2
execute if score @s AsaMatrix matches 14..18 run tp @s ^0 ^-0.03 ^0.5
execute if score @s AsaMatrix matches 19 run function asa_animator:narga/anim/bite_2/keyframes/3
execute if score @s AsaMatrix matches 19..21 run tp @s ^0.1666667 ^0 ^1
execute if score @s AsaMatrix matches 22 run function asa_animator:narga/anim/bite_2/keyframes/4
execute if score @s AsaMatrix matches 22..23 run tp @s ^0.25 ^0 ^0.8 ~-5 ~
execute if score @s AsaMatrix matches 24 run function asa_animator:narga/anim/bite_2/keyframes/5
execute if score @s AsaMatrix matches 24..26 run tp @s ^-0.06666666 ^0 ^1 ~-2 ~
execute if score @s AsaMatrix matches 27 run function asa_animator:narga/anim/bite_2/keyframes/6
execute if score @s AsaMatrix matches 27..31 run tp @s ^-0.1 ^0 ^1 ~5 ~
execute if score @s AsaMatrix matches 32 run function asa_animator:narga/anim/bite_2/keyframes/7
execute if score @s AsaMatrix matches 32..34 run tp @s ^-0.1666667 ^0 ^1 ~3 ~
execute if score @s AsaMatrix matches 35 run function asa_animator:narga/anim/bite_2/keyframes/8
execute if score @s AsaMatrix matches 35..50 run tp @s ^0 ^0 ^0.1 ~1 ~
execute if score @s AsaMatrix matches 51 run function asa_animator:narga/anim/bite_2/keyframes/9
execute if score @s AsaMatrix matches 51..53 run tp @s ^0 ^0 ^0.5 ~-35 ~
execute if score @s AsaMatrix matches 54 run function asa_animator:narga/anim/bite_2/keyframes/10
execute if score @s AsaMatrix matches 54..56 run tp @s ^0 ^0 ^-0.8 ~-18 ~
execute if score @s AsaMatrix matches 57 run function asa_animator:narga/anim/bite_2/keyframes/11
execute if score @s AsaMatrix matches 57..66 run tp @s ^0 ^0.005 ^-0.01999998 ~-4 ~
execute if score @s AsaMatrix matches 67 run function asa_animator:narga/anim/bite_2/keyframes/12
execute if score @s AsaMatrix matches 67..74 run tp @s ^0.00625 ^0.0015625 ^-0.225 ~-0.5 ~
execute if score @s AsaMatrix matches 75 run function asa_animator:narga/anim/bite_2/keyframes/13
execute if score @s AsaMatrix matches 75..82 run tp @s ^0.0125 ^0.0021875 ^-0.25 ~0.5 ~
execute if score @s AsaMatrix matches 83 run function asa_animator:narga/anim/bite_2/keyframes/14
execute if score @s AsaMatrix matches 83..90 run tp @s ^0.00625 ^0.0025 ^-0.25 ~0.5 ~
execute if score @s AsaMatrix matches 91 run function asa_animator:narga/anim/bite_2/keyframes/15
execute if score @s AsaMatrix matches 91..95 run tp @s ^0 ^0 ^-0.05
execute if score @s AsaMatrix matches 96.. run function asa_animator:narga/anim/bite_2/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

function asa_animator:narga/manager/ground

execute if score @s AsaMatrix matches 1..15 run function asa_animator:narga/manager/rotate
execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 23 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 31 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 51 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 74 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if score @s AsaMatrix matches 18..38 run particle block grass_block ^ ^ ^2 1.5 0.1 1.5 0 10
execute if score @s AsaMatrix matches 50..55 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10

execute if score @s AsaMatrix matches 53..59 positioned ~ ~2 ~ rotated ~-15 ~ run function asa_animator:narga/anim/bite_2/events/particle
execute if score @s AsaMatrix matches 51..59 positioned ~ ~1 ~ rotated ~-15 ~ run function asa_animator:narga/anim/bite_2/events/particle_2
execute if score @s AsaMatrix matches 51..59 positioned ~ ~0.3 ~ rotated ~-15 ~ run function asa_animator:narga/anim/bite_2/events/particle_3
execute if score @s AsaMatrix matches 50 run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 1.2
execute if score @s AsaMatrix matches 53 run playsound item.trident.throw master @a ~ ~ ~ 3 1.2

execute if score @s AsaMatrix matches 22 run function asa_animator:narga/anim/bite_2/events/damage
execute if score @s AsaMatrix matches 33 run function asa_animator:narga/anim/bite_2/events/damage
execute if score @s AsaMatrix matches 53 positioned ^-5 ^ ^-4 run function asa_animator:narga/anim/bite_2/events/damage_tail