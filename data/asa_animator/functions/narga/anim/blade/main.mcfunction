# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/blade/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/blade/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.8 ^-0.2
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:narga/anim/blade/keyframes/1
execute if entity @s[scores={AsaMatrix=6..11}] run tp @s ^0.05555555 ^-0.6866667 ^-0.1666667
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:narga/anim/blade/keyframes/2
execute if entity @s[scores={AsaMatrix=12..28}] run tp @s ^0.009803923 ^-0.003529412 ^-0.02352942
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:narga/anim/blade/keyframes/3
execute if entity @s[scores={AsaMatrix=29..33}] run tp @s ^-0.1 ^0.636 ^0.48 ~1 ~
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:narga/anim/blade/keyframes/4
execute if entity @s[scores={AsaMatrix=34..41}] run tp @s ^0.03125 ^-0.3625 ^0.0625 ~1 ~
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:narga/anim/blade/keyframes/5
execute if entity @s[scores={AsaMatrix=42..50}] run tp @s ^0.01785714 ^-0.007142857 ^0.03571429 ~-1 ~
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:narga/anim/blade/keyframes/6
execute if entity @s[scores={AsaMatrix=51..65}] run tp @s ^-0.025 ^0 ^-0.1 ~-1 ~
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:narga/anim/blade/keyframes/7
execute if entity @s[scores={AsaMatrix=66..75}] run tp @s ^-0.025 ^0 ^-0.1 ~0.2 ~
execute if entity @s[scores={AsaMatrix=76..}] run function asa_animator:narga/anim/blade/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1..24}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:narga/anim/blade/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=29..38}] run function asa_animator:narga/anim/blade/events/pos/offset

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:narga/manager/particle/jump

execute if entity @s[scores={AsaMatrix=41}] run playsound item.trident.throw master @a ~ ~ ~ 2 1.1
execute if entity @s[scores={AsaMatrix=41}] rotated ~10 ~ positioned ^ ^1.2 ^1 run function asa_animator:narga/anim/blade/events/particle