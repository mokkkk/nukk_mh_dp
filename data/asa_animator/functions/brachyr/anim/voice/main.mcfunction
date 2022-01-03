# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0.07142857 ^0
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:brachyr/anim/voice/keyframes/1
execute if entity @s[scores={AsaMatrix=8..15}] run tp @s ^0 ^-0.05 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:brachyr/anim/voice/keyframes/2
execute if entity @s[scores={AsaMatrix=16..21}] run tp @s ^0 ^-0.03333334 ^0
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:brachyr/anim/voice/keyframes/3
execute if entity @s[scores={AsaMatrix=22..28}] run tp @s ^0 ^0.08571429 ^0
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:brachyr/anim/voice/keyframes/4
execute if entity @s[scores={AsaMatrix=29..36}] run tp @s ^0 ^-0.05 ^0
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:brachyr/anim/voice/keyframes/5
execute if entity @s[scores={AsaMatrix=37..42}] run tp @s ^0 ^-0.03333334 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:brachyr/anim/voice/keyframes/6
execute if entity @s[scores={AsaMatrix=43..53}] run tp @s ^0 ^0.01818182 ^0
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:brachyr/anim/voice/keyframes/7
execute if entity @s[scores={AsaMatrix=54..58}] run tp @s ^0 ^-0.04 ^0
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:brachyr/anim/voice/keyframes/8
execute if entity @s[scores={AsaMatrix=59..64}] run tp @s ^0 ^0.03333334 ^0
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:brachyr/anim/voice/keyframes/9
execute if entity @s[scores={AsaMatrix=65..81}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=82}] run function asa_animator:brachyr/anim/voice/keyframes/10
execute if entity @s[scores={AsaMatrix=82..97}] run tp @s ^0 ^-0.00625 ^0
execute if entity @s[scores={AsaMatrix=98..}] run function asa_animator:brachyr/anim/voice/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/manager/change_target
execute if entity @s[scores={AsaMatrix=1..42}] run function asa_animator:brachyr/manager/rotate

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=22}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=42}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=59..85}] as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,distance=0..10] at @s positioned ~ ~1.4 ~ run particle flash ~ ~ ~ 0 0 0 0 1

execute if entity @s[scores={AsaMatrix=59}] run playsound entity.blaze.death master @a ~ ~ ~ 2 0.6
execute if entity @s[scores={AsaMatrix=59}] run playsound entity.blaze.death master @a ~ ~ ~ 2 0.5