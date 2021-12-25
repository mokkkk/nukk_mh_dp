# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tackle/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tackle/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0.04285714 ^0
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:narga/anim/tackle/keyframes/1
execute if entity @s[scores={AsaMatrix=8..15}] run tp @s ^0 ^0.075 ^-0.05
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:narga/anim/tackle/keyframes/2
execute if entity @s[scores={AsaMatrix=16..25}] run tp @s ^0 ^0 ^-0.04
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:narga/anim/tackle/keyframes/3
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0.2 ^0.42 ^
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:narga/anim/tackle/keyframes/4
execute if entity @s[scores={AsaMatrix=31..36}] run tp @s ^-0.04166667 ^-0.1666667 ^
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:narga/anim/tackle/keyframes/5
execute if entity @s[scores={AsaMatrix=37..42}] run tp @s ^-0.125 ^-0.4333333 ^
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:narga/anim/tackle/keyframes/6
execute if entity @s[scores={AsaMatrix=43..50}] run tp @s ^0 ^0 ^0.0375
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:narga/anim/tackle/keyframes/7
execute if entity @s[scores={AsaMatrix=51..57}] run tp @s ^0 ^0.3714286 ^-0.6 ~-24 ~
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:narga/anim/tackle/keyframes/8
execute if entity @s[scores={AsaMatrix=58..64}] run tp @s ^0 ^-0.1142857 ^-0.6 ~-24 ~
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:narga/anim/tackle/keyframes/9
execute if entity @s[scores={AsaMatrix=65..71}] run tp @s ^0 ^-0.1571429 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=72}] run function asa_animator:narga/anim/tackle/keyframes/10
execute if entity @s[scores={AsaMatrix=72..85}] run tp @s ^0 ^0 ^-0.07142857 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:narga/anim/tackle/keyframes/11
execute if entity @s[scores={AsaMatrix=86..90}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=91}] run function asa_animator:narga/anim/tackle/keyframes/12
execute if entity @s[scores={AsaMatrix=91..105}] run tp @s ^0 ^-0.006666667 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=106..}] run function asa_animator:narga/anim/tackle/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1..17}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:narga/anim/tackle/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=26..42}] run function asa_animator:narga/anim/tackle/events/pos/offset

execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:narga/anim/tackle/events/pos/set_pos_2
execute if entity @s[scores={AsaMatrix=51..64}] run function asa_animator:narga/anim/tackle/events/pos/offset

execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=50}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=53}] run playsound item.trident.throw master @a ~ ~ ~ 2 1.2
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=53..63}] positioned ~ ~1 ~ rotated ~-15 ~ run function asa_animator:narga/anim/bite_2/events/particle

execute if entity @s[scores={AsaMatrix=26..42}] run function asa_animator:narga/anim/tackle/events/damage_jump
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:narga/anim/tackle/events/damage