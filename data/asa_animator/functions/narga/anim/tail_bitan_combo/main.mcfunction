# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_bitan_combo/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0.03333334 ^-0.02291667 ^0.08333334
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/1
execute if entity @s[scores={AsaMatrix=7..13}] run tp @s ^0 ^0.3053572 ^0
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/2
execute if entity @s[scores={AsaMatrix=14..20}] run tp @s ^-0.1428571 ^0.5714286 ^-0.1857143
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/3
execute if entity @s[scores={AsaMatrix=21..27}] run tp @s ^0.07142857 ^-0.4285714 ^-0.05714286
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/4
execute if entity @s[scores={AsaMatrix=28..34}] run tp @s ^0 ^-0.4642857 ^-0.03428572
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/5
execute if entity @s[scores={AsaMatrix=35..46}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/6
execute if entity @s[scores={AsaMatrix=47..51}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/7
execute if entity @s[scores={AsaMatrix=52..56}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=57}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/8
execute if entity @s[scores={AsaMatrix=57..66}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=67}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/9
execute if entity @s[scores={AsaMatrix=67..71}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=72}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/10
execute if entity @s[scores={AsaMatrix=72..76}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=77}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/11
execute if entity @s[scores={AsaMatrix=77..81}] run tp @s ^0.14 ^0.07 ^-0.172
execute if entity @s[scores={AsaMatrix=82}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/12
execute if entity @s[scores={AsaMatrix=82..85}] run tp @s ^0.025 ^0.025 ^-0.05000001 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/13
execute if entity @s[scores={AsaMatrix=86..92}] run tp @s ^-0.03571429 ^-0.01428571 ^-0.1428571 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=93}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/14
execute if entity @s[scores={AsaMatrix=93..100}] run tp @s ^-0.03125 ^-0.0125 ^-0.3125 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=101}] run function asa_animator:narga/anim/tail_bitan_combo/keyframes/15
execute if entity @s[scores={AsaMatrix=101..105}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=106..}] run function asa_animator:narga/anim/tail_bitan_combo/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1..4}] run function asa_animator:narga/manager/ground
execute if entity @s[scores={AsaMatrix=1..30}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=8..26}] unless entity @e[distance=0..6,tag=NargaAttackTarget] at @s run tp @s ^ ^ ^0.7

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:narga/manager/particle/jump

execute if entity @s[scores={AsaMatrix=34}] run playsound entity.wither.break_block master @a ~ ~ ~ 2 0.8
execute if entity @s[scores={AsaMatrix=50}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=70}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=70}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=77}] run playsound block.grass.break master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=77}] run particle block grass_block ^ ^ ^6 1 0.1 1 0 10

execute if entity @s[scores={AsaMatrix=15..34}] run function asa_animator:narga/anim/tail_bitan/events/particle_jump
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:narga/anim/tail_bitan/events/particle_attack