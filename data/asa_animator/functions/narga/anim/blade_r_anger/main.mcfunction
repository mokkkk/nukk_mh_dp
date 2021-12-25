# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/blade_r_anger/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/blade_r_anger/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.6 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:narga/anim/blade_r_anger/keyframes/1
execute if entity @s[scores={AsaMatrix=6..13}] run tp @s ^0.03125 ^-0.3625 ^0.0625
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:narga/anim/blade_r_anger/keyframes/2
execute if entity @s[scores={AsaMatrix=14..18}] run tp @s ^0.05 ^-0.02 ^0.1
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:narga/anim/blade_r_anger/keyframes/3
execute if entity @s[scores={AsaMatrix=19..30}] run tp @s ^-0.02083333 ^0 ^-0.08333334
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:narga/anim/blade_r_anger/keyframes/4
execute if entity @s[scores={AsaMatrix=31..45}] run tp @s ^-0.01666667 ^0 ^-0.06666667 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=35..}] run function asa_animator:narga/anim/blade_r_anger/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1..16}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=1..12}] run function asa_animator:narga/anim/blade_r_anger/events/pos/offset

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 10

execute if entity @s[scores={AsaMatrix=13}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=13}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 10
execute if entity @s[scores={AsaMatrix=15}] run playsound item.trident.throw master @a ~ ~ ~ 2 1.1
execute if entity @s[scores={AsaMatrix=15}] rotated ~10 ~ positioned ^ ^1.2 ^1 run function asa_animator:narga/anim/blade_r/events/particle

execute if entity @s[scores={AsaMatrix=1..10}] run function asa_animator:narga/anim/blade_l/events/damage_jump
execute if entity @s[scores={AsaMatrix=15}] positioned ^-4 ^ ^3 run function asa_animator:narga/anim/blade_l_anger/events/damage