# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/tail_spin_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/tail_spin_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reia/anim/tail_spin_l/keyframes/1
execute if entity @s[scores={AsaMatrix=9..18}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reia/anim/tail_spin_l/keyframes/2
execute if entity @s[scores={AsaMatrix=19..23}] run tp @s ^0 ^-0.02 ^0 ~20 ~
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reia/anim/tail_spin_l/keyframes/3
execute if entity @s[scores={AsaMatrix=24..28}] run tp @s ^0 ^-0.01111111 ^0 ~12 ~
execute if entity @s[scores={AsaMatrix=29..32}] run tp @s ^0 ^-0.01111111 ^0 ~3 ~
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:reia/anim/tail_spin_l/keyframes/4
execute if entity @s[scores={AsaMatrix=33..42}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=43..}] run function asa_animator:reia/anim/tail_spin_l/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=19}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=19..26}] positioned ^ ^ ^-4 run function asa_animator:reia/anim/tail_spin_l/events/damage