# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/flying_tackle/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/flying_tackle/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.2 ^-0.075
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reia/anim/flying_tackle/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^0.1 ^-0.05
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reia/anim/flying_tackle/keyframes/2
execute if entity @s[scores={AsaMatrix=17..24}] run tp @s ^0 ^ ^-0.125
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reia/anim/flying_tackle/keyframes/3
execute if entity @s[scores={AsaMatrix=25..36}] run tp @s ^0 ^-0.06666667 ^0.6
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:reia/anim/flying_tackle/keyframes/4
execute if entity @s[scores={AsaMatrix=37..66}] run tp @s ^0 ^0 ^0.6
execute if entity @s[scores={AsaMatrix=67}] run function asa_animator:reia/anim/flying_tackle/keyframes/5
execute if entity @s[scores={AsaMatrix=67..74}] run tp @s ^0 ^-0.0937 ^0.6
execute if entity @s[scores={AsaMatrix=75}] run function asa_animator:reia/anim/flying_tackle/keyframes/6
execute if entity @s[scores={AsaMatrix=75..85}] run tp @s ^0 ^0 ^0.3
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:reia/anim/flying_tackle/keyframes/7
execute if entity @s[scores={AsaMatrix=86..100}] run tp @s ^0 ^-0.01333333 ^0.1
execute if entity @s[scores={AsaMatrix=101}] run function asa_animator:reia/anim/flying_tackle/keyframes/8
execute if entity @s[scores={AsaMatrix=101..115}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=116..}] run function asa_animator:reia/anim/flying_tackle/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

execute if entity @s[scores={AsaMatrix=6}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=22}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=64}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 高度調整
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reia/anim/flying_tackle/events/set_pos
execute if entity @s[scores={AsaMatrix=17..24}] run function asa_animator:reia/anim/flying_tackle/events/offset
execute if entity @s[scores={AsaMatrix=25..66}] at @s run tp @s ~ ~5 ~
execute if entity @s[scores={AsaMatrix=25..66}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=25..66}] at @s run tp @s ~ ~0.75 ~
execute if entity @s[scores={AsaMatrix=25..66}] positioned ~ ~-0.5 ~ run function asa_animator:reia/anim/flying_tackle/events/damage

execute if entity @s[scores={AsaMatrix=75..100}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 5
execute if entity @s[scores={AsaMatrix=75..100}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7